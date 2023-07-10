import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key, required this.taskid, required this.title});
  final String taskid;
  final String title;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 20,
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
        tileColor: Colors.deepPurpleAccent,
        leading: Text(
          "01",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        title: Text(
          'New Task',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        trailing: Row(
          children: [
            Icon(Icons.edit),
            Icon(Icons.delete),
          ],
        ),
      ),
    );
  }
}
