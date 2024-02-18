import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';

class CreateFileCommand extends Command {
  @override
  String get description => "Create file command";

  @override
  String get name => 'createfile';

  CreateFileCommand() {
    argParser
      ..addOption('name', abbr: 'n', mandatory: true)
      ..addOption('extension', abbr: 'e', defaultsTo: 'txt')
      ..addOption('message', abbr: 'm');
  }

  @override
  FutureOr? run() async {
    final file = File("${argResults!['name']}.${argResults!['extension']}")
      ..createSync();

    if (argResults?.wasParsed('message') ?? false) {
      file.writeAsString(argResults!['message']);
    }
  }
}
