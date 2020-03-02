import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  final String title;
  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState(
    title: this.title,
  );
}

class _MyHomePageState extends State<MyHomePage> {

  final String title;
  _MyHomePageState({this.title});

  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: TextFormField(
          cursorColor: Colors.red,
          decoration: InputDecoration(
            labelText: 'Ваше имя',
            hintText: 'Введите ваше имя',
          ),
          controller: _textController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('text: ${_textController.text}');
          _textController.clear();
        },
      ),
    );
  }
}
