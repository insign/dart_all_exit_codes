enum ExitCode {
  success(0, 'Success'),
  generalError(1, 'General Error'),
  misuseOfShellBuiltins(2, 'Misuse of shell builtins'),
  fileNotFound(2, 'No such file or directory'),
  wrongUsage(64, 'Command line usage error'),
  unableToOpenInputFile(66, 'Unable to open input file'),
  fileExists(72, 'File exists'),
  unableToCreateTemporaryFile(73, 'Unable to create temporary file'),
  unableToOpenOutputFile(69, 'Unable to open output file'),
  unableToOpenOutputFileForWriting(
      70, 'Unable to open output file for writing'),
  unableToOpenOutputFileForReading(
      71, 'Unable to open output file for reading'),
  notADirectory(20, 'Not a directory'),
  ioError(74, 'Input/output error'),
  tryAgain(75, 'Temporary failure, try again later'),
  configurationError(78, 'Configuration error'),
  permissionDenied(126, 'Permission denied'),
  cantExecute(126, 'Command invoked cannot execute'),
  notFound(127, 'Command not found'),
  invalidArgumentToExit(128, 'Invalid argument to exit'),
  interrupted(130, 'Interrupted'),
  userTerminated(130, 'Script terminated by Control-C'),
  unknown(255, 'Exit status out of range');

  final int code;
  final String description;

  const ExitCode(this.code, this.description);
}
