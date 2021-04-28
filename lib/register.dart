import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150.0,
        title: Text('Registration'),
        centerTitle: true,
        shape:RoundedRectangleBorder(
          borderRadius: new BorderRadius.vertical(
              bottom: new Radius.elliptical(
                  MediaQuery.of(context).size.width, 100.0)),
        )
//        RoundedRectangleBorder(
//          borderRadius: BorderRadius.vertical(
//            bottom: Radius.circular(60),
//          ),
//        ),
      ),
      body: MyCustomForm(),
    );
  }
}
// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your full name',
              labelText: 'Name',
            ),
//            validator: (value) {
//              if (value.) {
//                return 'Please enter some text';
//              }
//              return null;
//            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.account_balance_outlined),
              hintText: 'Enter a Class',
              labelText: 'Class',
            ),
//            validator: (value) {
//              if (value.isEmpty) {
//                return 'Please enter valid phone number';
//              }
//              return null;
//            },
          ),
//          TextFormField(
//            decoration: const InputDecoration(
//              icon: const Icon(Icons.calendar_today),
//              hintText: 'Enter your date of birth',
//              labelText: 'Dob',
//            ),
//            validator: (value) {
//              if (value.isEmpty) {
//                return 'Please enter valid date';
//              }
//              return null;
//            },
//          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
//                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
//                      webPosition: ToastGravity.CENTER,
                      gravity: ToastGravity.BOTTOM_RIGHT,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                  }
//                },
              )),
        ],
      ),
    );
  }
}