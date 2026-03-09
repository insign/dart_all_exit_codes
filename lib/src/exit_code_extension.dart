import 'all_exit_codes_consts.dart';

/// Extension to easily access human-readable descriptions for exit codes.
extension ExitCodeExtension on int {
  /// Returns the human-readable description of the exit code.
  /// If the exit code is not found, returns null.
  String? get exitDescription => exitCodeDescriptions[this];
}
