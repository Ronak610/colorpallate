
import 'dart:math';

import 'package:flutter/material.dart';

class colorPallete extends StatefulWidget {
  const colorPallete({Key? key}) : super(key: key);

  @override
  State<colorPallete> createState() => _colorPalleteState();
}

class _colorPalleteState extends State<colorPallete> {
  int a=0;
  int b=1;
  int c=2;
  int d=3;
  int e=4;
  int f=5;

  List color = [
    Colors.red,
    Colors.blue,
    Colors.teal,
    Colors.orange,
    Colors.purple,
    Colors.brown,
    Colors.grey,
    Colors.greenAccent,
    Colors.deepOrange,
    Colors.indigo,
    Colors.yellow,
    Colors.cyan,
    Colors.purpleAccent,
    Colors.pink,
    Colors.cyanAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    color: color[a],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 150,
                color: color[b],
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 150,
                color: color[d],
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 150,
                color: color[f],
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 150,
                color: color[e],
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  color: color[c],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              child: Container(
                height: 50,
                width: 250,
                alignment: Alignment.center,
                child: Text(
                  "Generate",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue),
                ),
              ),
              splashColor: Colors.red,
              onTap: () {
                var random = Random();
                setState(() {
                  a=random.nextInt(15);
                  b=random.nextInt(15);
                  c=random.nextInt(15);
                  d=random.nextInt(15);
                  e=random.nextInt(15);
                  f=random.nextInt(15);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}