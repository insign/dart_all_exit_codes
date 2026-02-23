/// 0 - Success - The operation was successful.
const int success = 0;

/// 1 - GeneralError - An error that occurred during the operation.
const int generalError = 1;

/// 2 - MisuseOfShellBuiltins - The command line usage is incorrect.
const int misuseOfShellBuiltins = 2;

/// 20 - NotADirectory - The specified path is not a directory.
const int notADirectory = 20;

/// 64 - WrongUsage - The command line usage is incorrect.
const int wrongUsage = 64;

/// 65 - DataError - The input data was incorrect in some way.
const int dataError = 65;

/// 66 - UnableToOpenInputFile - The specified input file could not be opened.
const int unableToOpenInputFile = 66;

/// 67 - NoUser - The user specified did not exist.
const int noUser = 67;

/// 68 - NoHost - The host specified did not exist.
const int noHost = 68;

/// 72 - FileExists - The specified file already exists.
const int fileExists = 72;

/// 73 - UnableToCreateTemporaryFile - A temporary file could not be created.
const int unableToCreateTemporaryFile = 73;

/// 69 - UnableToOpenOutputFile - The specified output file could not be opened.
const int unableToOpenOutputFile = 69;

/// 70 - UnableToOpenOutputFileForWriting - The specified output file could not be opened for writing.
const int unableToOpenOutputFileForWriting = 70;

/// 71 - UnableToOpenOutputFileForReading - The specified output file could not be opened for reading.
const int unableToOpenOutputFileForReading = 71;

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
  misuseOfShellBuiltins: 'The command line usage is incorrect.',
  notADirectory: 'The specified path is not a directory.',
  wrongUsage: 'The command line usage is incorrect.',
  dataError: 'The input data was incorrect in some way.',
  unableToOpenInputFile: 'The specified input file could not be opened.',
  noUser: 'The user specified did not exist.',
  noHost: 'The host specified did not exist.',
  fileExists: 'The specified file already exists.',
  unableToCreateTemporaryFile: 'A temporary file could not be created.',
  unableToOpenOutputFile: 'The specified output file could not be opened.',
  unableToOpenOutputFileForWriting:
      'The specified output file could not be opened for writing.',
  unableToOpenOutputFileForReading:
      'The specified output file could not be opened for reading.',
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
