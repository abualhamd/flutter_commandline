import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:flutter_command/helpers/process_logger.dart';

class BuildApkCommand extends Command {
  @override
  String get description => "Build apk command";

  @override
  String get name => 'buildapk';

  BuildApkCommand() {
    // argParser.addFlag('release', abbr: 'r', negatable: false);
  }

  @override
  FutureOr? run() async {
    final process =
        await Process.start('flutter', ['build', 'apk'], runInShell: true);

    processLogger(process);
  }
}
