import 'package:bloc_test/bloc_test.dart';
import 'package:expenses_tracker_ddd/application/expense/delete_expense_use_case.dart';
import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/presentation/expense/bloc/delete_expense_bloc/delete_expense_bloc.dart';
import 'package:expenses_tracker_ddd/presentation/expense/core/states/common_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDeleteExpenseUseCase extends Mock implements DeleteExpenseUseCase {}

void main() {
  group('DeleteExpenseBloc', () {
    late DeleteExpenseUseCase deleteExpenseUseCase;
    late int mockExpenseId;
    late DeleteExpenseBloc deleteExpenseBloc;

    setUp(() {
      deleteExpenseUseCase = MockDeleteExpenseUseCase();
      mockExpenseId = 1;
      deleteExpenseBloc = DeleteExpenseBloc(deleteExpenseUseCase);
      registerFallbackValue(1);
    });

    blocTest<DeleteExpenseBloc, DeleteExpenseState>(
      'emits [loading, expenseDeleted] when DeleteExpenseEvent is added and use case succeeds',
      build: () {
        when(() => deleteExpenseUseCase(any())).thenAnswer((_) async => const Right('Expense Deleted'));
        return deleteExpenseBloc;
      },
      act: (bloc) async => bloc.add(DeleteExpenseEvent.deleteExpense(mockExpenseId)),
      expect: () => [
        const DeleteExpenseState.commonState(commonState: CommonState.loading()),
        const DeleteExpenseState.expenseDeleted('Expense Deleted'),
      ],
    );

    blocTest<DeleteExpenseBloc, DeleteExpenseState>(
      'emits [loading, error] when DeleteExpenseEvent is added and use case fails',
      build: () {
        when(() => deleteExpenseUseCase(any())).thenAnswer((_) async => Left(Failure(message: 'Delete Failed')));
        return deleteExpenseBloc;
      },
      act: (bloc) => bloc.add(DeleteExpenseEvent.deleteExpense(mockExpenseId)),
      expect: () => [
        const DeleteExpenseState.commonState(commonState: CommonState.loading()),
        const DeleteExpenseState.commonState(commonState: CommonState.error(errorMessage: 'Delete Failed')),
      ],
    );

    tearDown(() {
      deleteExpenseBloc.close();
    });
  });
}
