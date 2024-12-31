import 'package:flutter/material.dart';

class Addtodo extends StatefulWidget {
  const Addtodo({super.key});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  TextEditingController addtodo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: addtodo,
            decoration: InputDecoration(
              hintText: 'Enter your todo',
            ),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[800],
              minimumSize: Size(200, 50),
            ),
            onPressed: () {
              addtodo.text = '';
            },
            child: Text(
              "add",
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}
