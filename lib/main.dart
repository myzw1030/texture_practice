import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'texture'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text(widget.title),

        // shadowColor: Colors.blue[50],
        // backgroundColor: Colors.blue[50],
      ),
      body: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: 1.0,
            ),
          ],
          // border: Border.all(color: Colors.black, width: 10),
        ),
        child: Center(
          child: Image.asset(
            'images/texture.png',
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
