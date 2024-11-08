import 'dart:io';

import 'RedirectController.dart';
import 'crud/AddBook.dart';
import 'crud/ViewBookList.dart';

class Dashboard {
  Dashboard._internal();

  static final Dashboard _instance = Dashboard._internal();

  factory Dashboard() {
    return _instance;
  }

  void viewDashboard() {
    print("\t\t\t\t\t\t\t\tBOOK STORE");
    print(
        "============================================================================\n\n");
    print("\t\t[1] Add Book\n");
    print("\t\t[2] Update Book\n");
    print("\t\t[3] Search Book\n");
    print("\t\t[4] Delete Book\n");
    print("\t\t[5] View Books\n\n");
    stdout.write("\tEnter an option -> ");
    String? input = stdin.readLineSync();

    if (input != null) {
      int? option = int.tryParse(input);
      switch (option) {
        case 1:
          print('\n' * 3);
          AddBook().add();
          print('\n' * 3);
          RedirectController().redirectToDashboard();
          break;
        case 5:
          print('\n' * 3);
          ViewBookList().view();
          print('\n' * 3);
          RedirectController().redirectToDashboard();
          break;
      }
    } else {}
  }
}
