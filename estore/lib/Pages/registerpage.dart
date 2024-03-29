import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  late String _UserName, _Email, _Password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Register Page "),
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
                  _ShowUserName(),
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
      "Registration",
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _ShowUserName() {
    return Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: TextFormField(
          onSaved: (value) {
            _UserName = value!;
          },
          validator: (value) {
            if (value!.isEmpty) {
              return "Enter Name";
            } else if (value.length < 6)
              return "Enter Name longer then 6 digit";
            else
              return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "UserName",
            hintText: "Enter Name",
            icon: Icon(
              Icons.face,
            ),
          ),
        ));
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
                primary: Theme.of(context).primaryColor,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginpage');
              },
              child: Text("Go Back To Login Page"))
        ],
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('UserName' + _UserName + 'Email' + _Email + 'Password' + _Password);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Validate ok')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Validation not ok')));
    }
  }
}
