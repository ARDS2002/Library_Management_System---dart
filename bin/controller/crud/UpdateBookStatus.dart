import 'dart:io';

import '../../Util/BookStatus.dart';
import '../BookController.dart';
import '../RedirectController.dart';

class UpdateBookStatus {
  void update() {
    stdout.write("\tEnter Book Title -> ");
    String? title = stdin.readLineSync();
    print("\nA - Available\tB - Borrowed");
    stdout.write("\tEnter New Status [A/B] -> ");
    String? status = stdin.readLineSync();

    if (status != null && status.toUpperCase() == "B") {
      BookController().update(title!, BookStatus.BORROWED);
    } else if (status != null && status.toLowerCase() == "A") {
      BookController().update(title!, BookStatus.AVAILABLE);
    } else {
      print("Wrong Status!");
      RedirectController().redirectToDashboard();
    }
  }
}
