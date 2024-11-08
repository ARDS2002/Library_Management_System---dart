import 'dart:io';

import '../../model/TextBook.dart';
import '../BookController.dart';

class AddBook {
  void add() {
    stdout.write("\tEnter Book Title -> ");
    String? title = stdin.readLineSync();
    stdout.write("\tEnter Book Author -> ");
    String? author = stdin.readLineSync();
    stdout.write("\tEnter Book ISBN -> ");
    String? isbn = stdin.readLineSync();
    stdout.write("\tEnter Subject Area -> ");
    String? subjectArea = stdin.readLineSync();
    stdout.write("\tEnter Grade Level -> ");
    String? gradeLevel = stdin.readLineSync();

    BookController().add(TextBook(
        title: title ?? "Unknown Title",
        author: author ?? "Unknown Author",
        isbn: isbn ?? "Unknown ISBN",
        subjectArea: subjectArea ?? "General",
        gradeLevel: gradeLevel ?? "Unknown Level"));
  }
}
