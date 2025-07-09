import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyProject());
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: appBar());
  }
}

Widget appBar() {
  return DefaultTabController(
    length: 5,
    child: Scaffold(
      appBar: AppBar(
        title: Text(
          "facebook",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 32,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [
          SizedBox(width: 5),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.black),
          ),
          SizedBox(width: 5),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
          SizedBox(width: 5),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
            color: Colors.black,
          ),
        ],
        bottom: TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.people)),
            Tab(icon: Icon(Icons.storefront)),
            Tab(icon: Icon(Icons.account_circle)),
            Tab(icon: Icon(Icons.notifications)),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          home_page(),

          Container(color: Colors.blue, child: const Icon(Icons.people)),
          Container(color: Colors.blue, child: const Icon(Icons.storefront)),
          Container(
            color: Colors.blue,
            child: const Icon(Icons.account_circle),
          ),
          Container(color: Colors.blue, child: const Icon(Icons.notifications)),
        ],
      ),
    ),
  );
}
