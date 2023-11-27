// We use a conditional export to expose the right connection factory depending
// on the platform.
export 'unsupported_connection.dart'
    if (dart.library.js) 'open_web_connection.dart'
    if (dart.library.ffi) 'open_other_platform_connection.dart';
