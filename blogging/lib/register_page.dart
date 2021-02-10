import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:task_1/dashboard.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
    ));

class Register extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final title = Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          'Blogging',
          style: TextStyle(
              color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.w900),
        ),
      ),
    );

    final inputFullName = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        validator: RequiredValidator(errorText: "* Required"),
        decoration: InputDecoration(
          hintText: 'Full Name',
          prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(50.0)),
        ),
      ),
    );

    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        validator: RequiredValidator(errorText: "* Required"),
        decoration: InputDecoration(
          hintText: 'Valid Email',
          prefixIcon: Icon(Icons.alternate_email),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(50.0)),
        ),
      ),
    );

    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        validator: RequiredValidator(errorText: "* Required"),
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          prefixIcon: Icon(Icons.https),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(50.0)),
        ),
      ),
    );

    final inputConfirmPassword = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextFormField(
        // validator: (value) {
        //   if (value.isEmpty) {
        //     return '* Required';
        //   }
        //   return null;
        // },
        validator: RequiredValidator(errorText: "* Required"),
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Confirm Password',
          prefixIcon: Icon(Icons.https),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(50.0)),
        ),
      ),
    );

    final buttonSignup = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: ButtonTheme(
        child: RaisedButton(
          child: Text('Sign Up',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {
            if (_formkey.currentState.validate()) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return MyDashboard();
                }),
              );
            }
          },
        ),
      ),
    );

    final optionSignin = Row(
      children: <Widget>[
        Text(
          'Already have an account?',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Sign in',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg_app.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Form(
            key: _formkey,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: <Widget>[
                title,
                inputFullName,
                inputEmail,
                inputPassword,
                inputConfirmPassword,
                buttonSignup,
                optionSignin,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
