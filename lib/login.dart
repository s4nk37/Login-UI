import 'package:flutter/material.dart';
import './main.dart';
import './signup.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Image.asset(
                'assets/image/login2.png',
                width: 300,
                height: 270.0,
              ),
            ),
            new Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Login to continue",
                style: TextStyle(fontFamily: 'Nunito', fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              width: 350,
              child: TextField(
                autocorrect: false,
                autofocus: true,
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: 'Nunito', letterSpacing: 1.0),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  hasFloatingPlaceholder: true,
                  contentPadding: EdgeInsets.all(15.0),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    borderSide: new BorderSide(color: Colors.lightBlue.shade50),
                  ),
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              width: 350,
              child: TextField(
                autocorrect: false,
                obscureText: true,
                // autofocus: true,
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: 'Nunito', letterSpacing: 1.0),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  fillColor: Colors.black,
                  contentPadding: EdgeInsets.all(15.0),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    borderSide: new BorderSide(color: Colors.lightBlue),
                  ),
                ),
              ),
            ),
            new SizedBox(
              width: 350,
              height: 50.0,
              child: RaisedButton(
                elevation: 5.0,
                child: new Text(
                  "Login",
                  style: new TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 15,
                    fontFamily: 'Nunito',
                  ),
                ),
                color: Colors.lightBlue,
                splashColor: Colors.grey,
                shape: StadiumBorder(),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Signup(),
                  ),
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Forgot Password ?",
                style: TextStyle(fontFamily: 'Nunito', fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            new FlatButton(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                "Create an account",
                style: TextStyle(fontFamily: 'Nunito', fontSize: 15),
                textAlign: TextAlign.center,
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Signup(),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
