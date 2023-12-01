part of 'expense_validation_bloc.dart';

abstract class ExpenseValidationState extends Equatable {
  const ExpenseValidationState();
}

class ExpenseValidationInitial extends ExpenseValidationState {
  @override
  List<Object> get props => [];
}

class ExpenseValidationError extends ExpenseValidationState {
  ExpenseValidationError({required this.message});

  String? message;

  @override
  List<Object> get props => [message!];
}
