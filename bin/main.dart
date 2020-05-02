import 'dart:io';

import 'package:organizer/organizer.dart' as organizer;

void main(List<String> arguments) {
  print('Organizer'.toUpperCase());

  print('''
  [s]ort all files into folders by last modified date
  [m]ove all files out of folders
  ''');

  var input = stdin.readLineSync();
  switch (input) {
    case 's':
      {
        organizer.sortIntoFolders();
        return;
      }
    case 'm':
      {
        return;
      }
    default:
      {
        exit(2);
      }
  }
}
