import 'package:flutter/material.dart';
import 'package:lesson45_homework/models/todo_model.dart';
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
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              TodosProvoder.of(context).addTodo(TodoModel(
                  id: 1,
                  title: "Work",
                  description: "work harder",
                  isCompleted: false,
                  date: DateTime.now()));
            }),
        body: ListenableBuilder(
          listenable: TodosProvoder.of(context),
          builder: (context, child) => Builder(builder: (context) {
            return GridView.builder(
              itemCount: TodosProvoder.of(context).todos.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(TodosProvoder.of(context).todos[index].title),
                      Text(TodosProvoder.of(context).todos[index].description),
                      Text(TodosProvoder.of(context).todos[index].isCompleted
                          ? "completed"
                          : "uncompleted"),
                      Text(TodosProvoder.of(context)
                          .todos[index]
                          .date
                          .toString()),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              TodosProvoder.of(context).deleteTodo(index);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          }),
        ));
  }
}
