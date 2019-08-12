import 'package:flutter/material.dart';
import './main.dart';
import './login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
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
        body: Center(child: Text('Sanket'),),
      ),
      theme: darkTheme ? ThemeData.light() : ThemeData.dark(),
    );
  }
}