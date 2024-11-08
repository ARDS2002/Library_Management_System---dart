import 'dart:io';
import 'DashboardController.dart';

class RedirectController {
  RedirectController._internal();

  static final RedirectController _instance = RedirectController._internal();

  factory RedirectController() {
    return _instance;
  }

  void redirectToDashboard() {
    stdout.write("\tDo You Want Redirect To Dashboard? [Y/N] -> ");
    String? response = stdin.readLineSync();
    if (response?.toLowerCase() == "y") {
      Dashboard().viewDashboard();
    } else {
      exit(0);
    }
  }
}
