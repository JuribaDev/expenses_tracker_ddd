import 'package:expenses_tracker_ddd/core/error_handling/non_user_viewable_exception.dart';
import 'package:logger/logger.dart';

Exception parseExceptions(Object error, Logger logger) {
  logger.i('Parsing Exceptions to determine the proper Error.');
  if (error is FormatException) {
    logger.e('FormatException detected. Returning FormatException. : ${error.message}');
    return NonUserViewableException();
  }
  return NonUserViewableException();
}
