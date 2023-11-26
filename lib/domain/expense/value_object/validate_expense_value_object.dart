import 'package:expenses_tracker_ddd/domain/expense/value_object/amount.dart';
import 'package:expenses_tracker_ddd/domain/expense/value_object/title.dart';

String? validateTitleOnChange(String? value) {
  final validator = Title.create(value!);
  return validator.isLeft ? validator.left.message : null;
}

String? validateAmountOnChange(String? value) {
  final validator = Amount.create(value!);
  return validator.isLeft ? validator.left.message : null;
}
