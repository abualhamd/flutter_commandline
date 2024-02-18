import 'dart:convert';
import 'dart:io';

void processLogger(Process process) {
  print('Process started with PID: ${process.pid}');
  process.stdout.transform(utf8.decoder).forEach((data) {
    print('stdout: $data');
  });
  process.stderr.transform(utf8.decoder).forEach((data) {
    print('stderr: $data');
  });
  process.exitCode.then((int code) {
    print('Process exited with code $code');
  });
}
