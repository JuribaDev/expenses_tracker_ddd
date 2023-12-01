part of 'expense_validation_bloc.dart';

abstract class ExpenseValidationEvent extends Equatable {
  const ExpenseValidationEvent();
}

class ValidateInputEvent extends ExpenseValidationEvent {
  ValidateInputEvent({required this.input});

  String? input;

  @override
  List<Object> get props => [input!];
}
