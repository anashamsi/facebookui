import 'package:flutter/material.dart';

void main() {
  runApp(MyProject());
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBar(
        title: Text(
          "Facebook",
          style: TextStyle(
            color: Color.fromRGBO(24, 119, 242, 1),
            fontSize: 30,
            // fontFamily: 'Calibri',
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
