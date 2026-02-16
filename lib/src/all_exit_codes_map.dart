import 'all_exit_codes_consts.dart';

/// A map of exit codes to their descriptions.
const Map<int, String> exitCodeDescriptions = {
  success: 'The operation was successful.',
  generalError: 'An error that occurred during the operation.',
  misuseOfShellBuiltins: 'The command line usage is incorrect.',
  notADirectory: 'The specified path is not a directory.',
  wrongUsage: 'The command line usage is incorrect.',
  unableToOpenInputFile: 'The specified input file could not be opened.',
  fileExists: 'The specified file already exists.',
  unableToCreateTemporaryFile: 'A temporary file could not be created.',
  unableToOpenOutputFile: 'The specified output file could not be opened.',
  unableToOpenOutputFileForWriting: 'The specified output file could not be opened for writing.',
  unableToOpenOutputFileForReading: 'The specified output file could not be opened for reading.',
  ioError: 'An input/output error occurred.',
  tryAgain: 'A temporary failure occurred, try again later.',
  configurationError: 'A configuration error occurred.',
  cantExecute: 'The command invoked cannot execute.',
  notFound: 'The command was not found.',
  invalidArgumentToExit: 'An invalid argument was passed to the exit command.',
  userTerminated: 'The script was terminated by the user.',
  unknown: 'An unknown exit status occurred.',
};
