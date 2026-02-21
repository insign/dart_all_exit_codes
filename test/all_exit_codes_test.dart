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
      expect(noUser, 67);
      expect(noHost, 68);
      expect(protocolError, 76);
      expect(noPermission, 77);
    });

    test('Check exitCodeDescriptions map', () {
      expect(exitCodeDescriptions, isA<Map<int, String>>());
      expect(exitCodeDescriptions[success], 'Success');
      expect(exitCodeDescriptions[generalError], 'GeneralError');
      expect(exitCodeDescriptions[wrongUsage], 'WrongUsage');
      expect(exitCodeDescriptions[dataError], 'DataError');
      expect(exitCodeDescriptions[noUser], 'NoUser');
      expect(exitCodeDescriptions.length, 24);
    });
  });
}
