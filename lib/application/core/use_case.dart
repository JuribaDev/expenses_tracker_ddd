import 'package:expenses_tracker_ddd/core/constants/type_devs.dart';

// ignore: one_member_abstracts
abstract class UseCase<T, Params> {
  EitherFailureOrSuccess<T> call(Params params);
}
