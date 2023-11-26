import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/core/validation_exception.dart';
import 'package:expenses_tracker_ddd/domain/core/value_object.dart';

class Date extends ValueObject<DateTime> {
  const Date(super.value);

  const Date._(super.value);

  static EitherValidationExceptionOrNull<Date> create(DateTime value) {
    if (value.isAfter(DateTime.now())) {
      return Left(ValidationException('Expense date can not be in the future.'));
    }

    return Right(Date._(value));
  }
}
