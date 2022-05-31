import 'package:duyfluttermodule/default_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const CHANNEL = "com.duytq.demointegrateflutter";
const PlatformChannel = const MethodChannel(CHANNEL);

class FullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _exitFlutter() {
      PlatformChannel.invokeMethod('exitFlutter');
    }

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Form"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: _exitFlutter,
            ),
          ),
          body: DefaultPage(),
        ));
  }
}
