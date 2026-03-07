import 'all_exit_codes_consts.dart';

/// Extension to easily get the human-readable description of an exit code.
extension ExitCodeExtension on int {
  /// Returns the description of the exit code, or null if it is not a standard code.
  String? get exitDescription => exitCodeDescriptions[this];
}
