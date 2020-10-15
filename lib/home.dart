import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  final String username;
  final String password;

  const PageHome({Key key, this.username, this.password}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Username kita : ${widget.username}'),
          Text('Password kita : ${widget.username}'),
        ],
      ),
    );
  }
}
