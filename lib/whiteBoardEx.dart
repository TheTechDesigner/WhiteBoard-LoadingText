import 'package:flutter/material.dart';
import 'package:whiteboardkit/whiteboardkit.dart';

class WhiteBoardEx extends StatefulWidget {
  WhiteBoardEx({Key key}) : super(key: key);

  @override
  _WhiteBoardExState createState() => _WhiteBoardExState();
}

class _WhiteBoardExState extends State<WhiteBoardEx> {

  DrawingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = DrawingController();
    _controller.onChange().listen((event) { });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('White Board'),
        centerTitle: true,
      ),
      body: Whiteboard(
        controller: _controller,
      ),
    );
  }
}
