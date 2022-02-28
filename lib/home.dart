import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello";
  void _changeText() {
    setState(() {
      if (mytext.startsWith("H")) {
        mytext = "Welcome to my app";
      } else {
        mytext = "Hello world";
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(mytext, style: const TextStyle(fontSize: 20.0)),
              // ElevatedButton(
              //   onPressed: _changeText,
              //   child: const Text(
              //     "click",
              //     style: TextStyle(fontSize: 15.0),
              //   ),
              //   style: ElevatedButton.styleFrom(primary: Colors.green),
              // ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mero Pashal"),
      ),
      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}
