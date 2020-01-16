import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "I_AM_POOR",
      theme: ThemeData(accentColor: Colors.grey),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.grey,
            title: Text("I AM POOR"),
          ),
          body: Center(
            child: Image(
              image: AssetImage("images/nomoney.jpg"),
            ),
          )),
    );
  }
}
