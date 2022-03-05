import 'package:flutter/material.dart';
import 'Login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
            brightness: Brightness.light,
            accentColor: Colors.red),
      ),
    );
  }
}
