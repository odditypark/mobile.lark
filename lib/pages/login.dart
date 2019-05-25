import 'package:flutter/material.dart';
import 'package:lark/models/login.dart';

class Login extends StatefulWidget {
  const Login({Key key}):super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginModel model = LoginModel();
  
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: model.labelText,
                ),
                onChanged: model.textChanged,
              ),
              SizedBox(height: 24),
              RaisedButton(
                child: model.buttonText,
                onPressed: () => model.butonPressed(context)
              ),
            ]
          )
        )
      )
    );
  }
}
