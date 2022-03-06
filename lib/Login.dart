import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const Image(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(
                size: 100.0,
              ),
              Form(
                  child: Theme(
                data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: const InputDecorationTheme(
                        labelStyle:
                            TextStyle(color: Colors.teal, fontSize: 20.0))),
                child: Container(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: "Enter email"),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: "Enter Password"),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      const Padding(padding: EdgeInsets.only(top: 20.0)),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Login"))
                    ],
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
