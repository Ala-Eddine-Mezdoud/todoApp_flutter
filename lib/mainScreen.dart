import 'package:flutter/material.dart';
import 'package:todoapp/addtodo.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue[900]),
              accountName: Text('Ala Eddine Mezdoud'),
              accountEmail: Text('mezdoud.ala.e@gmail.com'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "welcome",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Todo'),
        centerTitle: true,
        actions: [
          InkWell(
            enableFeedback: true,
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 200,
                      child: Addtodo(),
                    );
                  });
              // to do later
            },
            customBorder: CircleBorder(),
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                size: 35,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
