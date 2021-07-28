import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              child: Column(
                children: [
                  Text(
                    "Registration",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "UserName",
                          hintText: "Enter Name",
                          icon: Icon(
                            Icons.face,
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          hintText: "Enter Valid Email",
                          icon: Icon(
                            Icons.mail,
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          hintText: "Enter Password",
                          icon: Icon(
                            Icons.lock,
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Signup"),
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                            
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
