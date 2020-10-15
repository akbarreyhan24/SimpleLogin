import 'package:flutter/material.dart';
import 'package:simple_login_app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passworController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Input Username!';
                  }
                  return null;
                },
                controller: _usernameController,
                decoration: InputDecoration(hintText: "Input Username"),
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Input Password!';
                  }
                  return null;
                },
                obscureText: true,
                controller: _passworController,
                decoration: InputDecoration(hintText: "Input password"),
                maxLength: 16,
              ),
              RaisedButton(
                child: Text("Login"),
                color: Colors.blueAccent,
                disabledColor: Colors.blueAccent,
                onPressed: () {
                  // cek apakah username nya Reyhan & passwordnya 12345

                  String username = _usernameController.text;
                  String password = _passworController.text;
                  if (_formKey.currentState.validate()) {
                    if (username != "Reyhan") {
                      print("Username salah!!");
                    } else if (password != "12345") {
                      print("Password salah");
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageHome(
                                    username: _usernameController.text,
                                    password: _passworController.text,
                                  )));
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
