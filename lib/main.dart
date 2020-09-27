import 'package:flutter/material.dart';
import 'package:white_board__loading_text/loadingTextEx.dart';
import 'package:white_board__loading_text/whiteBoardEx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Buttons';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200.0,
              height: 50.0,
              margin: EdgeInsets.all(16.0),
              // color: Color(0xFF1B1F32),
              child: RaisedButton(
                color: Color(0xFF1B1F32),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WhiteBoardEx(),
                    ),
                  );
                },
                child: Text(
                  'White Board',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFBE0E6),
                  ),
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 50.0,
              margin: EdgeInsets.all(16.0),
              // color: Color(0xFF1B1F32),
              child: RaisedButton(
                color: Color(0xFF1B1F32),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoadingTextEx(),
                    ),
                  );
                },
                child: Text(
                  'Loading Text',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFBE0E6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
