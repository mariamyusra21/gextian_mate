import 'package:flutter/material.dart';
import 'package:gextian_mate/todoItem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gextian Mate',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'All Tasks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<TodoItem> taskList = <TodoItem>[];
  final TextEditingController addTaskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Icon(Icons.square_rounded),
      ),
      body: Container(
        child: ListView(
          children: [
            // Container(
            //   // margin: EdgeInsets.only(top: 20, bottom: 20),
            // ),
            TodoItem(
              taskid: "01",
              title: "New Task",
            ),
            // taskList.map(TodoItem);
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AlertDialog(
              title: Text("Add Task"),
              content: TextFormField(
                decoration: InputDecoration(hintText: "Add your Task..."),
                controller: addTaskController,
              ));
        },
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
