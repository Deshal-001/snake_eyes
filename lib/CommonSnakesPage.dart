import 'package:flutter/material.dart';

class CommonSnakesPage extends StatefulWidget {
  const CommonSnakesPage({Key? key}) : super(key: key);

  @override
  _CommonSnakesPageState createState() => _CommonSnakesPageState();
}

class _CommonSnakesPageState extends State<CommonSnakesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.green,
                child: Text("Back to menu")),
          ),
        ),
      ),
    );
  }
}
