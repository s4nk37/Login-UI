import 'dart:async';
import 'package:flutter/material.dart';
import './login.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
 bool darkTheme = true;

  void ok(){
    setState(() {
      if (darkTheme == true) {
        darkTheme = false;
      }else{
      darkTheme = true;}
    });
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        // backgroundColor: Colors.tealAccent,
        appBar: AppBar( 
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.lightbulb_outline),
              color: darkTheme ? Colors.black : Colors.white,
              onPressed: ok,
            ),
          ],
        ),
        body: HomeScreen(),
      ),
      theme: darkTheme ? ThemeData.light() : ThemeData.dark(),
    );
  }
}
