import 'all_exit_codes_consts.dart';

/// Extension to easily get the human-readable description of an exit code
extension ExitCodeExtension on int {
  /// Returns the human-readable description of this exit code
  String? get exitDescription => exitCodeDescriptions[this];
}
