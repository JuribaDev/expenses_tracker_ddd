import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/core/validation_exception.dart';
import 'package:expenses_tracker_ddd/domain/core/value_object.dart';

class Title extends ValueObject<String> {
  const Title(super.value);

  const Title._(super.value);

  static EitherValidationExceptionOrNull<Title> create(String value) {
    if (value.isEmpty) {
      return Left(ValidationException('Title can not be empty.'));
    }
    if (value.length > 50) {
      return Left(ValidationException('Title can not be longer than 50 characters.'));
    }

    return Right(Title._(value));
  }
}
