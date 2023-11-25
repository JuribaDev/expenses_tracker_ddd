import 'package:expenses_tracker_ddd/core/error_handling/parse_exceptions.dart';
import 'package:logger/logger.dart';


List<T> parseGenericList<T>(
  dynamic data,
  T Function(Map<String, dynamic>) fromJson,
) {
  if (data is! List) {
    throw parseExceptions(const FormatException('Data is not a list'),Logger());
  }
  return List<T>.from(
    data.map((e) => fromJson(e as Map<String, dynamic>)),
  );
}
