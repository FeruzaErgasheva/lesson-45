import 'package:flutter/material.dart';
import 'package:lesson45_homework/controllers/todos_controller.dart';

class TodosProvoder extends InheritedWidget {
  final TodosController todosController;
  const TodosProvoder(
      {super.key, required super.child, required this.todosController});

  @override
  bool updateShouldNotify(covariant TodosProvoder oldWidget) {
    return oldWidget.todosController != todosController;
  }

  static TodosController of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<TodosProvoder>()!
        .todosController;
  }
}
