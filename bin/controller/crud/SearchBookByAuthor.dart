import 'dart:io';

import '../../model/TextBook.dart';
import '../BookController.dart';

class SearchBookByAuthor{
  search() {
    stdout.write("\tEnter Book Author -> ");
    String? author = stdin.readLineSync();

    if (author != null) {
      List<TextBook> list = BookController().searchByAuthor(author);
      if (list.isNotEmpty) {
        for (var book in list) {
          print(book);
        }
      } else {
        print("Cannot Find a book!");
      }
    } else {
      print("Input a author!");
      search();
    }
  }
}