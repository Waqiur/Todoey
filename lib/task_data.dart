import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<String> taskList = ['Buy Milk', 'Buy Drink', 'Buy Nothing'];

  void addTask(String newTask) {
    taskList.add(newTask);
    notifyListeners();
  }
  void deleteTask(String task){
    taskList.remove(task);
    notifyListeners();
  }
}
