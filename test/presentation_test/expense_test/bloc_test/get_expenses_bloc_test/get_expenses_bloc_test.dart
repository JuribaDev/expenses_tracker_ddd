import 'package:bloc_test/bloc_test.dart';
import 'package:expenses_tracker_ddd/application/expense/dto/expense_dto.dart';
import 'package:expenses_tracker_ddd/application/expense/view_expenses_use_case.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/get_expenses_bloc/get_expenses_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetExpensesUseCase extends Mock implements GetExpensesUseCase {}

void main() {
  group('GetExpensesBloc', () {
    late GetExpensesUseCase getExpensesUseCase;
    late GetExpensesBloc getExpensesBloc;

    setUp(() {
      getExpensesUseCase = MockGetExpensesUseCase();
      getExpensesBloc = GetExpensesBloc(getExpensesUseCase);
    });

    blocTest<GetExpensesBloc, GetExpensesState>(
      'emits [loading, expensesLoaded] when GetExpensesEvent is added and use case succeeds',
      build: () {
        when(() => getExpensesUseCase(any())).thenAnswer((_) async => const Right(<ExpenseDto>[]));
        return getExpensesBloc;
      },
      act: (bloc) async => bloc.add(const GetExpensesEvent.getExpenses()),
      expect: () => [
        const GetExpensesState.commonState(commonState: CommonState.loading()),
        const GetExpensesState.expensesLoaded(<ExpenseDto>[]),
      ],
    );

    blocTest<GetExpensesBloc, GetExpensesState>(
      'emits [loading, error] when GetExpensesEvent is added and use case fails',
      build: () {
        when(() => getExpensesUseCase(any())).thenAnswer((_) async => Left(Failure(message: 'Load Failed')));
        return getExpensesBloc;
      },
      act: (bloc) => bloc.add(const GetExpensesEvent.getExpenses()),
      expect: () => [
        const GetExpensesState.commonState(commonState: CommonState.loading()),
        const GetExpensesState.commonState(commonState: CommonState.error(errorMessage: 'Load Failed')),
      ],
    );

    tearDown(() {
      getExpensesBloc.close();
    });
  });
}
