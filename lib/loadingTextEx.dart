import 'package:flutter/material.dart';
import 'package:loading_text/loading_text.dart';

class LoadingTextEx extends StatelessWidget {
  const LoadingTextEx({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Text'),
        centerTitle: true,
      ),
      body: Center(
        child: LoadingText(
          text: 'Process',
          duration: Duration(seconds: 1),
          dots: '.',
          textStyle: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
