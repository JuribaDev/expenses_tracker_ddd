import 'package:bloc_test/bloc_test.dart';
import 'package:expenses_tracker_ddd/application/expense/use_case/get_last_ten_expenses_title_use_case.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/expense/expense.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/get_last_ten_expenses_title_bloc/get_last_ten_expenses_title_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetLastTenExpensesTitleUseCase extends Mock implements GetLastTenExpensesTitleUseCase {}

void main() {
  group('GetLastTenExpensesTitleBloc', () {
    late GetLastTenExpensesTitleUseCase getLastTenExpensesTitleUseCase;
    late GetLastTenExpensesTitleBloc getLastTenExpensesTitleBloc;

    setUp(() {
      getLastTenExpensesTitleUseCase = MockGetLastTenExpensesTitleUseCase();
      getLastTenExpensesTitleBloc = GetLastTenExpensesTitleBloc(getLastTenExpensesTitleUseCase);
    });

    const title = Title('value');

    blocTest<GetLastTenExpensesTitleBloc, GetLastTenExpensesTitleState>(
      'emits [loading, expensesTitleLoaded] when successful',
      build: () {
        when(() => getLastTenExpensesTitleUseCase(any())).thenAnswer(
          (_) async => const Right(<Title>[title]),
        );
        return getLastTenExpensesTitleBloc;
      },
      act: (bloc) => bloc.add(const GetLastTenExpensesTitleEvent.getLastTenExpensesTitleEvent()),
      expect: () => [
        const GetLastTenExpensesTitleState.commonState(commonState: CommonState.loading()),
        const GetLastTenExpensesTitleState.expensesTitleLoaded([title]),
      ],
    );

    blocTest<GetLastTenExpensesTitleBloc, GetLastTenExpensesTitleState>(
      'emits [loading, error] when use case fails',
      build: () {
        when(() => getLastTenExpensesTitleUseCase(any())).thenAnswer(
          (_) async => Left(Failure(message: 'Error occurred')),
        );
        return getLastTenExpensesTitleBloc;
      },
      act: (bloc) => bloc.add(const GetLastTenExpensesTitleEvent.getLastTenExpensesTitleEvent()),
      expect: () => [
        const GetLastTenExpensesTitleState.commonState(commonState: CommonState.loading()),
        const GetLastTenExpensesTitleState.commonState(commonState: CommonState.error(errorMessage: 'Error occurred')),
      ],
    );

    tearDown(() {
      getLastTenExpensesTitleBloc.close();
    });
  });
}
