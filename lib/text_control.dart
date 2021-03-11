import 'package:flutter/material.dart';
import 'package:s_assignment_1/text_output.dart';

class ChangeText extends StatefulWidget {
  @override
  _ChangeTextState createState() => _ChangeTextState();
}

class _ChangeTextState extends State<ChangeText> {
  String myText = 'Current Text';
  void changeText() {
    setState(() {
      myText = 'It changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Changer'),
      ),
      body: Column(
        children: [
          TextOutput(myText),
          TextButton(
            onPressed: changeText,
            child: Text('Change it!'),
          ),
        ],
      ),
    );
  }
}
