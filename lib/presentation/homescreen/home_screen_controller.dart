import 'package:flutter/cupertino.dart';

class HomeScreenController extends ChangeNotifier {
  HomeScreenController();
  final textController = TextEditingController();

  String result = "";
  String operation = "";
  int lefttext = 0;
  int righttext = 0;

  numberClick(numberValue) {
    result = result + numberValue;

    notifyListeners();
  }

  actionClick(actionValue) {
    if (result.isEmpty) {
    } else {
      if (!RegExp(r"[+\-*/]").hasMatch(result)) {
        result = result + actionValue;
      } else {}
    }

    notifyListeners();
  }

  answerButton() {
    if (result.contains("+")) {
      operation = "+";
      result.split("+");
      lefttext = int.parse(result.split("+")[0]);

      if (result.split("+")[1].isEmpty) {
        return 0;
      } else {
        righttext = int.parse(result.split("+")[1]);
      }

      result = (lefttext + righttext).toString();
      notifyListeners();
    } else if (result.contains("-")) {
      operation = "-";
      result.split("-");
      lefttext = int.parse(result.split("-")[0]);
      righttext = int.parse(result.split("-")[1]);
      result = (lefttext - righttext).toString();
    } else if (result.contains("×")) {
      operation = "×";
      result.split("×");
      lefttext = int.parse(result.split("×")[0]);
      righttext = int.parse(result.split("×")[1]);
      result = (lefttext * righttext).toString();
    } else if (result.contains("÷")) {
      operation = "÷";
      result.split("÷");
      lefttext = int.parse(result.split("÷")[0]);
      righttext = int.parse(result.split("÷")[1]);
      result = (lefttext / righttext).toString();
    }
    notifyListeners();
  }

  void clearText() {
    result = "";
  }
}
