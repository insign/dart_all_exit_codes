import 'all_exit_codes_consts.dart';

/// Adds utility methods to `int` representing exit codes.
extension ExitCodeExtension on int {
  /// Returns the human-readable description for this exit code.
  /// If the code is not recognized, it returns a default "Unknown exit code" message.
  String get exitDescription {
    return exitCodeDescriptions[this] ?? 'An unknown exit status occurred.';
  }
}
