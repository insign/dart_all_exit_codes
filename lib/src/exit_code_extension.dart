import 'all_exit_codes_consts.dart';

/// Extension to add [exitDescription] property to [int].
extension ExitCodeExtension on int {
  /// Returns the description string of this exit code using the [exitCodeDescriptions] map.
  /// If the exit code is not found, returns `null` or a generic description.
  String? get exitDescription => exitCodeDescriptions[this];
}
