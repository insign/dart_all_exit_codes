import 'dart:io';
import 'package:all_exit_codes/all_exit_codes.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      final dir = Directory('test/temp');
      if (!dir.existsSync()) {
        dir.createSync();
      }
      File('test/temp/test_script.dart').writeAsStringSync('''
import 'package:all_exit_codes/all_exit_codes.dart';

void main(List<String> args) {
  final isError = args[0] == 'error';
  final hasMessage = args[1] == 'true';
  final message = hasMessage ? 'Custom message' : null;

  if (isError) {
    wrongUsage.exitProcess(message);
  } else {
    success.exitProcess(message);
  }
}
''');
    });

    tearDownAll(() {
      final dir = Directory('test/temp');
      if (dir.existsSync()) {
        dir.deleteSync(recursive: true);
      }
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

    test('Check exitCodeNames map', () {
      expect(exitCodeNames, isA<Map<int, String>>());
      expect(exitCodeNames[success], 'success');
      expect(exitCodeNames[generalError], 'generalError');
      expect(exitCodeNames[misuseOfShellBuiltins], 'misuseOfShellBuiltins');
      expect(exitCodeNames[wrongUsage], 'wrongUsage');
      expect(exitCodeNames[noInput], 'noInput');
      expect(exitCodeNames[unavailable], 'unavailable');
      expect(exitCodeNames[software], 'software');
      expect(exitCodeNames[osError], 'osError');
      expect(exitCodeNames[osFile], 'osFile');
      expect(exitCodeNames[cantCreate], 'cantCreate');
      expect(exitCodeNames[dataError], 'dataError');
      expect(exitCodeNames[noUser], 'noUser');
      expect(exitCodeNames.length, 24);
    });

    test('Check ExitCodeExtension', () {
      expect(success.exitName, 'success');
      expect(generalError.exitName, 'generalError');
      expect(wrongUsage.exitName, 'wrongUsage');
      expect(999.exitName, 'unknown');

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

    test('Check exitProcess extension with custom message on error', () async {
      final result = await Process.run(
          'dart', ['run', 'test/temp/test_script.dart', 'error', 'true']);
      expect(result.exitCode, wrongUsage);
      expect(result.stdout.toString().trim(), isEmpty);
      expect(result.stderr.toString().trim(), 'Custom message');
    });

    test('Check exitProcess extension with default message on error', () async {
      final result = await Process.run(
          'dart', ['run', 'test/temp/test_script.dart', 'error', 'false']);
      expect(result.exitCode, wrongUsage);
      expect(result.stdout.toString().trim(), isEmpty);
      expect(result.stderr.toString().trim(),
          'The command line usage is incorrect.');
    });

    test('Check exitProcess extension with custom message on success',
        () async {
      final result = await Process.run(
          'dart', ['run', 'test/temp/test_script.dart', 'success', 'true']);
      expect(result.exitCode, success);
      expect(result.stderr.toString().trim(), isEmpty);
      expect(result.stdout.toString().trim(), 'Custom message');
    });

    test('Check exitProcess extension with default message on success',
        () async {
      final result = await Process.run(
          'dart', ['run', 'test/temp/test_script.dart', 'success', 'false']);
      expect(result.exitCode, success);
      expect(result.stderr.toString().trim(), isEmpty);
      expect(result.stdout.toString().trim(), 'The operation was successful.');
    });

    test('Check throwExit extension throws ExitException', () {
      expect(
        () => wrongUsage.throwExit(),
        throwsA(isA<ExitException>()
            .having((e) => e.exitCode, 'exitCode', wrongUsage)
            .having((e) => e.message, 'message', isNull)
            .having((e) => e.toString(), 'toString',
                'ExitException(64): The command line usage is incorrect.')),
      );

      expect(
        () => success.throwExit('All good!'),
        throwsA(isA<ExitException>()
            .having((e) => e.exitCode, 'exitCode', success)
            .having((e) => e.message, 'message', 'All good!')
            .having((e) => e.toString(), 'toString',
                'ExitException(0): All good!')),
      );
    });

    test('Check ExitException toString formats correctly', () {
      final exceptionWithoutMessage = ExitException(generalError);
      expect(exceptionWithoutMessage.toString(),
          'ExitException(1): An error that occurred during the operation.');

      final exceptionWithMessage = ExitException(notADirectory, 'Custom error');
      expect(exceptionWithMessage.toString(),
          'ExitException(20): Custom error');

      final exceptionUnknown = ExitException(999);
      expect(
          exceptionUnknown.toString(), 'ExitException(999): Unknown exit code: 999');
    });
  });
}
