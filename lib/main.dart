//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_assigenment/register.dart';
void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'register.dart',
        home: Register(),
      ),);
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Assignment"),
        backgroundColor: Colors.grey[600],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0
              ),
              Text("Student Form",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 10.0),
//              Image.asset(),
              CircleAvatar(
                backgroundImage: AssetImage('images/image12.jpg'),
                radius: 60.0,
              ),
              SizedBox(height: 300.0),
              RaisedButton(
                child: Text("Register",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: (){},
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(20.0),
                splashColor: Colors.grey,
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                child: Text("View",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: (){},
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(35.0,20.0,35.0,20.0),
                splashColor: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
