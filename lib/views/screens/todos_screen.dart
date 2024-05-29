import 'package:flutter/material.dart';
import 'package:lesson45_homework/providers/todos_provoder.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Todos"),
          centerTitle: true,
        ),
        body: ListenableBuilder(
          listenable: TodosProvoder.of(context),
          builder: (context, child) => GridView.builder(
            itemCount: TodosProvoder.of(context).todos.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Text(TodosProvoder.of(context).todos[index].title),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
