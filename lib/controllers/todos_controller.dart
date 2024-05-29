import 'package:flutter/material.dart';
import 'package:lesson45_homework/models/todo_model.dart';

class TodosController with ChangeNotifier {
  final List<TodoModel> _todos = [
    TodoModel(
        id: 1,
        title: "Reading",
        description: "Reading article",
        isCompleted: true,
        date: DateTime.now())
  ];

  List get todos {
    return [..._todos];
  }

  void addTodo(TodoModel todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void deleteTodo(int index) {
    _todos.removeAt(index);
    notifyListeners();
  }
}
