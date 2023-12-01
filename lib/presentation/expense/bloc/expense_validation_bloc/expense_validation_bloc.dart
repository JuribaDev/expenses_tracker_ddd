import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'expense_validation_event.dart';
part 'expense_validation_state.dart';

class ExpenseValidationBloc extends Bloc<ExpenseValidationEvent, ExpenseValidationState> {
  ExpenseValidationBloc() : super(ExpenseValidationInitial()) {
    on<ValidateInputEvent>((event, emit) {
      if (event.input!.isEmpty) {
        emit(ExpenseValidationError(message: 'Input cannot be empty'));
      } else {
        emit(ExpenseValidationInitial());
      }
    });
  }
}
