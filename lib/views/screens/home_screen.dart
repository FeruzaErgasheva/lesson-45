import 'package:flutter/material.dart';
import 'package:lesson45_homework/views/screens/note_screen.dart';
import 'package:lesson45_homework/views/screens/todos_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("45 homework"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Center(
          child: SizedBox(
            height: 300,
            child: Column(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TodosScreen(),
                        ),
                      );
                    },
                    child: const Text("Todos")),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NoteScreen(),
                        ),
                      );
                    },
                    child: const Text("Notes"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
