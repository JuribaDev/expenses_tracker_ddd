import 'package:expenses_tracker_ddd/core/error_handling/failure.dart';
import 'package:expenses_tracker_ddd/core/utils/either.dart';

typedef EitherFailureOrSuccess<T> = Future<Either<Failure, T>>;
