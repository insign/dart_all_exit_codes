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

    test('Check descriptions map', () {
      expect(exitCodeDescriptions[success],
          'Success - The operation was successful.');
      expect(exitCodeDescriptions[wrongUsage],
          'WrongUsage - The command line usage is incorrect.');
      expect(exitCodeDescriptions[unknown],
          'Unknown - An unknown exit status occurred.');
      expect(exitCodeDescriptions.length, 19);
    });
  });
}
