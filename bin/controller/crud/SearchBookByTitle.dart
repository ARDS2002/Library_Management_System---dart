import 'dart:io';

import '../../model/TextBook.dart';
import '../BookController.dart';

class SearchBookByTitle {
  search() {
    stdout.write("\tEnter Book Title -> ");
    String? title = stdin.readLineSync();

    if (title != null) {
      List<TextBook> list = BookController().searchByTitle(title);
      if (list.isNotEmpty) {
        for (var book in list) {
          print(book);
        }
      } else {
        print("Cannot Find a book!");
      }
    } else {
      print("Input a title!");
      search();
    }
  }
}
