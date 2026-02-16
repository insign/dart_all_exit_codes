import 'package:all_exit_codes/all_exit_codes.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Check some codes', () {
      expect(wrongUsage, 64);
    });

    test('Check exitCodeDescriptions map', () {
      expect(exitCodeDescriptions[success], 'The operation was successful.');
      expect(exitCodeDescriptions[wrongUsage],
          'The command line usage is incorrect.');
      expect(exitCodeDescriptions[ioError], 'An input/output error occurred.');
      expect(exitCodeDescriptions.length, 19);
    });
  });
}
