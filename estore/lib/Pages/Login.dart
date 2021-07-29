import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String _Email, _Password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page "),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _showText(),
                  _ShowEmail(),
                  _ShowPassword(),
                  _ShowActionbutton(), //signup and go back to login button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _showText() {
    return Text(
      "Login",
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _ShowEmail() {
    return Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: TextFormField(
          onSaved: (value) {
            _Email = value!;
          },
          validator: (value) {
            if (value!.isEmpty) {
              return "Enter Email";
            } else if (!value.contains("@"))
              return "Enter Valid Email";
            else
              return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Email",
            hintText: "Enter Valid Email",
            icon: Icon(
              Icons.mail,
            ),
          ),
        ));
  }

  Widget _ShowPassword() {
    return Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: TextFormField(
          onSaved: (value) {
            _Password = value!;
          },
          validator: (value) {
            if (value!.isEmpty) {
              return "Enter password";
            } else if (value.length < 6)
              return "Enter password longer then 6 digit";
            else
              return null;
          },
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Password",
            hintText: "Enter Password",
            icon: Icon(
              Icons.lock,
            ),
          ),
        ));
  }

  Widget _ShowActionbutton() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _submit();
            },
            child: Text("Signup"),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/RegisterPage');
              },
              child: Text("Go To Register Page"))
        ],
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Email' + _Email + 'Password' + _Password);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Validate ok')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Validation not ok')));
    }
  }
}
