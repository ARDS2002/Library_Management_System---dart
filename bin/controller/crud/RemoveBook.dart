import 'dart:io';

import '../BookController.dart';

class RemoveBook {
  void remove(){
    stdout.write("\tEnter Book Title -> ");
    String? title = stdin.readLineSync();

    if(title!=null){
      BookController().removeBook(title);
    }
  }
}
