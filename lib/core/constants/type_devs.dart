import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';
import 'package:expenses_tracker_ddd/domain/core/validation_exception.dart';

typedef EitherFailureOrSuccess<T> = Future<Either<Failure, T>>;
typedef EitherValidationExceptionOrNull<T> = Either<ValidationException, T>;
