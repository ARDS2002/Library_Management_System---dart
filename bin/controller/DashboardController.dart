import 'dart:io';

import 'RedirectController.dart';
import 'crud/AddBook.dart';
import 'crud/RemoveBook.dart';
import 'crud/SearchBookByAuthor.dart';
import 'crud/SearchBookByTitle.dart';
import 'crud/UpdateBookStatus.dart';
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
    print("\t\t[4] Remove Book\n");
    print("\t\t[5] View Books\n\n");
    stdout.write("\tEnter an option -> ");
    String? input = stdin.readLineSync();

    if (input != null) {
      int? option = int.tryParse(input);
      switch (option) {
        case 1:
          print('\n' * 2);
          AddBook().add();
          print('\n' * 2);
          RedirectController().redirectToDashboard();
          break;
        case 2:
          print('\n' * 2);
          UpdateBookStatus().update();
          print('\n' * 2);
          RedirectController().redirectToDashboard();
          break;
        case 3:
          print("\t\t[1] Search By Title\n");
          print("\t\t[2] Search By Author\n");
          stdout.write("\tEnter an option -> ");
          String? inputSearch = stdin.readLineSync();
          if (inputSearch != null) {
            int? searchOption = int.tryParse(inputSearch);
            switch (searchOption) {
              case 1:
                print('\n' * 2);
                SearchBookByTitle().search();
                print('\n' * 2);
                RedirectController().redirectToDashboard();
                break;
              case 2:
                print('\n' * 2);
                SearchBookByAuthor().search();
                print('\n' * 2);
                RedirectController().redirectToDashboard();
                break;
              default:
                RedirectController().redirectToDashboard();
            }
          }
        case 4:
          print('\n' * 2);
          RemoveBook().remove();
          print('\n' * 2);
          RedirectController().redirectToDashboard();
          break;
        case 5:
          print('\n' * 2);
          ViewBookList().view();
          print('\n' * 2);
          RedirectController().redirectToDashboard();
          break;
        default:
          RedirectController().redirectToDashboard();
      }
    } else {}
  }
}
