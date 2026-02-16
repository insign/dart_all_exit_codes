Just terminal exit codes with more description to use in dart

## Getting started

```dart
dart pub add all_exit_codes
```
## Usage

```dart
import 'package:all_exit_codes/all_exit_codes.dart';

Never main() {
  print('Maybe you are using this command wrong. Check the usage.');
  exit(wrongUsage);
}
```

You can also access the description of the exit codes:

```dart
import 'package:all_exit_codes/all_exit_codes.dart';

void main() {
  int code = wrongUsage;
  print('Exit code $code: ${exitCodeDescriptions[code]}');
}
```

## LICENSE

[BSD 3-Clause License](./LICENSE)

## CONTRIBUTE
> Just do a PR
