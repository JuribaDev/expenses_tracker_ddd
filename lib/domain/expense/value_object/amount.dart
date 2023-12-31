import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/core/validation_exception.dart';
import 'package:expenses_tracker_ddd/domain/core/value_object.dart';

class Amount extends ValueObject<double> {
  const Amount(super.value);

  const Amount._(super.value);

  static const maxAmount = 99999999.99;

  static EitherValidationExceptionOrNull<Amount> create(String value) {
    if (value.isEmpty) {
      return Left(ValidationException('Amount can not be empty.'));
    }

    final amount = double.tryParse(value);
    if (amount == null) {
      return Left(ValidationException('Amount must be a number.'));
    }
    if (_isAmountNegative(amount)) {
      return Left(ValidationException('Amount can not be negative.'));
    }
    if (_amountIsZero(amount)) {
      return Left(ValidationException('Amount can not be zero.'));
    }
    if (_amountIsGreaterThanMaxAmount(amount)) {
      return Left(ValidationException('Amount can not be greater than $maxAmount.'));
    }
    return Right(Amount._(amount));
  }

  static bool _isAmountNegative(double amount) => amount < 0;

  static bool _amountIsGreaterThanMaxAmount(double amount) => amount > maxAmount;

  static bool _amountIsZero(double amount) => amount == 0;
}
