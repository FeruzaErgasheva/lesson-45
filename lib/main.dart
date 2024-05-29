import 'package:flutter/material.dart';
import 'package:lesson45_homework/controllers/todos_controller.dart';
import 'package:lesson45_homework/providers/todos_provoder.dart';
import 'package:lesson45_homework/views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TodosProvoder(
      // ignore: sort_child_properties_last
      child: Builder(builder: (context) {
        return ListenableBuilder(
          listenable: TodosProvoder.of(context),
          builder: (context, child) => const MaterialApp(
            home: HomeScreen(),
          ),
        );
      }),
      todosController: TodosController(),
    );
  }
}
