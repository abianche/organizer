import 'dart:io';

import 'package:path/path.dart';

String dateToDirName(DateTime dateTime) {
  return '${dateTime.year.toString()}.${dateTime.month.toString().padLeft(2, '0')}.${dateTime.day.toString().padLeft(2, '0')}';
}

void sortIntoFolders() {
  final stopwatch = Stopwatch()..start();

  var currentDir = Directory.current;
  currentDir
      .list(recursive: false, followLinks: false)
      .listen((FileSystemEntity entity) {
    if (entity is File) {
      var filename = basename(entity.path);
      var newPath = dateToDirName(entity.lastModifiedSync());
      var newFilePath = Directory.current.path + '/$newPath/$filename';
      File(newFilePath).createSync(recursive: true);
      entity.copy(newFilePath);
    }
  }).onDone(() => print('sort_into_folders executed in ${stopwatch.elapsed}.'));

  ;
}
