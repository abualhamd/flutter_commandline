import 'package:args/command_runner.dart';
import 'package:flutter_command/commands/build_apk.dart';
import 'package:flutter_command/commands/createfile.dart';

void main(List<String> args) {
  CommandRunner('flutter_command', 'description')
    ..addCommand(BuildApkCommand())
    ..addCommand(CreateFileCommand())
    ..run(args);
}
