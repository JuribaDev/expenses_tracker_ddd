import 'package:bloc_test/bloc_test.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/use_case/watch_last_month_expenses_use_case.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/watch_last_month_expenses_bloc/watch_last_month_expenses_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

class MockWatchLastMonthExpensesUseCase extends Mock implements WatchLastMonthExpensesUseCase {}

void main() {
  group('WatchLastMonthExpensesBloc', () {
    late WatchLastMonthExpensesUseCase watchLastMonthExpensesUseCase;
    late WatchLastMonthExpensesBloc watchLastMonthExpensesBloc;

    setUp(() {
      watchLastMonthExpensesUseCase = MockWatchLastMonthExpensesUseCase();
      watchLastMonthExpensesBloc = WatchLastMonthExpensesBloc(watchLastMonthExpensesUseCase);
    });

    blocTest<WatchLastMonthExpensesBloc, WatchLastMonthExpensesState>(
      'emits [loading, loaded] when WatchLastMonthExpensesEvent is added and use case succeeds',
      build: () {
        when(() => watchLastMonthExpensesUseCase(any())).thenAnswer(
          (_) async => Right(Stream.value(<ExpenseDto>[expenseDTOMockReq])),
        );
        return watchLastMonthExpensesBloc;
      },
      act: (bloc) async => bloc.add(const WatchLastMonthExpensesEvent.getLastMonthExpenses()),
      expect: () => [
        const WatchLastMonthExpensesState.commonState(commonState: CommonState.loading()),
        isA<WatchLastMonthExpensesState>().having(
          (state) => state.maybeWhen(
            loaded: (stream) => stream,
            orElse: () => null,
          ),
          'expensesStream',
          isNotNull,
        ),
      ],
    );

    blocTest<WatchLastMonthExpensesBloc, WatchLastMonthExpensesState>(
      'emits [loading, error] when WatchLastMonthExpensesEvent is added and use case fails',
      build: () {
        when(() => watchLastMonthExpensesUseCase(any())).thenAnswer(
          (_) async => Left(Failure(message: 'Load Failed')),
        );
        return watchLastMonthExpensesBloc;
      },
      act: (bloc) => bloc.add(const WatchLastMonthExpensesEvent.getLastMonthExpenses()),
    );

    tearDown(() {
      watchLastMonthExpensesBloc.close();
    });
  });
}
