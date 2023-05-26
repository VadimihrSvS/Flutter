import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int number = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(
                child: Text('Ask Me Anything')),
            backgroundColor: Colors.indigo,
          ),
          body: Center(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      int temp = 0;
                      do {
                        temp = Random().nextInt(4) + 1;
                      }
                      while(temp == number);
                      number = temp;
                    });
                  },
                  child: Image.asset('images/ball$number.png')))
        ),
      ),
    );
  }
}
