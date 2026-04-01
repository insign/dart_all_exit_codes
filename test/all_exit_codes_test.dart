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

    test('Check BSD exit codes', () {
      expect(dataError, 65);
      expect(noInput, 66);
      expect(unavailable, 69);
      expect(software, 70);
      expect(osError, 71);
      expect(osFile, 72);
      expect(cantCreate, 73);
      expect(noUser, 67);
      expect(noHost, 68);
      expect(protocolError, 76);
      expect(noPermission, 77);
    });

    test('Check exitCodeDescriptions map', () {
      expect(exitCodeDescriptions, isA<Map<int, String>>());
      expect(exitCodeDescriptions[success], 'The operation was successful.');
      expect(
        exitCodeDescriptions[generalError],
        'An error that occurred during the operation.',
      );
      expect(
        exitCodeDescriptions[misuseOfShellBuiltins],
        'Misuse of shell builtins.',
      );
      expect(
        exitCodeDescriptions[wrongUsage],
        'The command line usage is incorrect.',
      );
      expect(exitCodeDescriptions[noInput],
          'An input file (not a system file) did not exist or was not readable.');
      expect(exitCodeDescriptions[unavailable], 'A service is unavailable.');
      expect(exitCodeDescriptions[software],
          'An internal software error has been detected.');
      expect(exitCodeDescriptions[osError],
          'An operating system error has been detected.');
      expect(exitCodeDescriptions[osFile],
          'Some system file does not exist, cannot be opened, or has some sort of error.');
      expect(exitCodeDescriptions[cantCreate],
          'A (user specified) output file cannot be created.');
      expect(
        exitCodeDescriptions[dataError],
        'The input data was incorrect in some way.',
      );
      expect(exitCodeDescriptions[noUser], 'The user specified did not exist.');
      expect(exitCodeDescriptions.length, 24);
    });

    test('Check ExitCodeExtension', () {
      expect(success.exitDescription, 'The operation was successful.');
      expect(
        generalError.exitDescription,
        'An error that occurred during the operation.',
      );
      expect(
        wrongUsage.exitDescription,
        'The command line usage is incorrect.',
      );
      expect(999.exitDescription, 'Unknown exit code: 999');

      expect(success.isSuccess, isTrue);
      expect(success.isError, isFalse);

      expect(generalError.isSuccess, isFalse);
      expect(generalError.isError, isTrue);

      expect(wrongUsage.isSuccess, isFalse);
      expect(wrongUsage.isError, isTrue);

      expect(999.isSuccess, isFalse);
      expect(999.isError, isTrue);
    });
  });
}
