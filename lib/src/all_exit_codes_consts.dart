/// 0 - Success - The operation was successful.
const int success = 0;

/// 1 - GeneralError - An error that occurred during the operation.
const int generalError = 1;

/// 2 - MisuseOfShellBuiltins - The command line usage is incorrect.
const int misuseOfShellBuiltins = 2;

/// 2 - FileNotFound - The specified file could not be found.
const int fileNotFound = 2;

/// 64 - WrongUsage - The command line usage is incorrect.
const int wrongUsage = 64;

/// 66 - UnableToOpenInputFile - The specified input file could not be opened.
const int unableToOpenInputFile = 66;

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

/// 20 - NotADirectory - The specified path is not a directory.
const int notADirectory = 20;

/// 74 - IOError - An input/output error occurred.
const int ioError = 74;

/// 75 - TryAgain - A temporary failure occurred, try again later.
const int tryAgain = 75;

/// 78 - ConfigurationError - A configuration error occurred.
const int configurationError = 78;

/// 126 - PermissionDenied - Permission to access the specified file or directory was denied.
const int permissionDenied = 126;

/// 126 - CantExecute - The command invoked cannot execute.
const int cantExecute = 126;

/// 127 - NotFound - The command was not found.
const int notFound = 127;

/// 128 - InvalidArgumentToExit - An invalid argument was passed to the exit command.
const int invalidArgumentToExit = 128;

/// 130 - Interrupted - The operation was interrupted.
const int interrupted = 130;

/// 130 - UserTerminated - The script was terminated by the user.
const int userTerminated = 130;

/// 255 - Unknown - An unknown exit status occurred.
const int unknown = 255;
