import 'dart:io';

/// 0 - Success - The operation was successful.
const int success = 0;

/// 1 - GeneralError - An error that occurred during the operation.
const int generalError = 1;

/// 2 - MisuseOfShellBuiltins - Misuse of shell builtins.
const int misuseOfShellBuiltins = 2;

/// 20 - NotADirectory - The specified path is not a directory.
const int notADirectory = 20;

/// 64 - WrongUsage - The command line usage is incorrect.
const int wrongUsage = 64;

/// 65 - DataError - The input data was incorrect in some way.
const int dataError = 65;

/// 66 - UnableToOpenInputFile - The specified input file could not be opened.
@Deprecated('Use noInput instead')
const int unableToOpenInputFile = 66;

/// 66 - NoInput - An input file (not a system file) did not exist or was not readable.
const int noInput = 66;

/// 67 - NoUser - The user specified did not exist.
const int noUser = 67;

/// 68 - NoHost - The host specified did not exist.
const int noHost = 68;

/// 72 - FileExists - The specified file already exists.
@Deprecated('Use osFile instead')
const int fileExists = 72;

/// 72 - OSFile - Some system file does not exist, cannot be opened, or has some sort of error.
const int osFile = 72;

/// 73 - UnableToCreateTemporaryFile - A temporary file could not be created.
@Deprecated('Use cantCreate instead')
const int unableToCreateTemporaryFile = 73;

/// 73 - CantCreate - A (user specified) output file cannot be created.
const int cantCreate = 73;

/// 69 - UnableToOpenOutputFile - The specified output file could not be opened.
@Deprecated('Use unavailable instead')
const int unableToOpenOutputFile = 69;

/// 69 - Unavailable - A service is unavailable.
const int unavailable = 69;

/// 70 - UnableToOpenOutputFileForWriting - The specified output file could not be opened for writing.
@Deprecated('Use software instead')
const int unableToOpenOutputFileForWriting = 70;

/// 70 - Software - An internal software error has been detected.
const int software = 70;

/// 71 - UnableToOpenOutputFileForReading - The specified output file could not be opened for reading.
@Deprecated('Use osError instead')
const int unableToOpenOutputFileForReading = 71;

/// 71 - OSError - An operating system error has been detected.
const int osError = 71;

/// 74 - IOError - An input/output error occurred.
const int ioError = 74;

/// 75 - TryAgain - A temporary failure occurred, try again later.
const int tryAgain = 75;

/// 76 - ProtocolError - The remote system returned something that was "not possible" during a protocol exchange.
const int protocolError = 76;

/// 77 - NoPermission - You did not have sufficient permission to perform the operation.
const int noPermission = 77;

/// 78 - ConfigurationError - A configuration error occurred.
const int configurationError = 78;

/// 126 - CantExecute - The command invoked cannot execute.
const int cantExecute = 126;

/// 127 - NotFound - The command was not found.
const int notFound = 127;

/// 128 - InvalidArgumentToExit - An invalid argument was passed to the exit command.
const int invalidArgumentToExit = 128;

/// 130 - UserTerminated - The script was terminated by the user.
const int userTerminated = 130;

/// 255 - Unknown - An unknown exit status occurred.
const int unknown = 255;

/// Map of exit codes to their human-readable descriptions.
const Map<int, String> exitCodeDescriptions = {
  success: 'The operation was successful.',
  generalError: 'An error that occurred during the operation.',
  misuseOfShellBuiltins: 'Misuse of shell builtins.',
  notADirectory: 'The specified path is not a directory.',
  wrongUsage: 'The command line usage is incorrect.',
  dataError: 'The input data was incorrect in some way.',
  noInput:
      'An input file (not a system file) did not exist or was not readable.',
  noUser: 'The user specified did not exist.',
  noHost: 'The host specified did not exist.',
  osFile:
      'Some system file does not exist, cannot be opened, or has some sort of error.',
  cantCreate: 'A (user specified) output file cannot be created.',
  unavailable: 'A service is unavailable.',
  software: 'An internal software error has been detected.',
  osError: 'An operating system error has been detected.',
  ioError: 'An input/output error occurred.',
  tryAgain: 'A temporary failure occurred, try again later.',
  protocolError:
      'The remote system returned something that was "not possible" during a protocol exchange.',
  noPermission:
      'You did not have sufficient permission to perform the operation.',
  configurationError: 'A configuration error occurred.',
  cantExecute: 'The command invoked cannot execute.',
  notFound: 'The command was not found.',
  invalidArgumentToExit: 'An invalid argument was passed to the exit command.',
  userTerminated: 'The script was terminated by the user.',
  unknown: 'An unknown exit status occurred.',
};

extension ExitCodeExtension on int {
  String get exitDescription =>
      exitCodeDescriptions[this] ?? 'Unknown exit code: $this';

  bool get isSuccess => this == success;

  bool get isError => this != success;

  /// Exits the process with this exit code.
  ///
  /// If [message] is provided, it is printed to stdout if the exit code is
  /// [success], or to stderr if the exit code is an error.
  /// If [message] is not provided, the [exitDescription] is printed instead.
  Never exitProcess([String? message]) {
    final msg = message ?? exitDescription;
    if (isError) {
      stderr.writeln(msg);
    } else {
      stdout.writeln(msg);
    }
    exit(this);
  }
}
