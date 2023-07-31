import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
          appBar: AppBar(
            // The title text which will be shown on the action bar
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My Flutter App"),
              ],
            ),
          ),
          body: Center(
            child: Container(
              width: 350.0,
              height: 300.0,
            ),
          )),
    );
  }
}

void main() {
  runApp(MyApp());
}
