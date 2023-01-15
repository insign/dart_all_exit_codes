import 'package:exit_codes/exit_codes.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Check some codes', () {
      expect(ExitCode.wrongUsage.code, 64);
    });
  });
}
