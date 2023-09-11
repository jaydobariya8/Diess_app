import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const dieaapp());
}

class dieaapp extends StatefulWidget {
  const dieaapp({super.key});

  @override
  State<dieaapp> createState() => _dieaappState();
}

class _dieaappState extends State<dieaapp> {
  int LeftDies = 5;
  int Rightdies = 6;
  void changeDiesFace() {
    setState(() {
      Rightdies = Random().nextInt(6) + 1;

      LeftDies = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 164, 157, 228),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                'Dies App',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 150,
              ),
              Row(
                children: [
                  Expanded(
                      child: TextButton(
                    onPressed: () {
                      changeDiesFace();
                    },
                    child: Image.asset('images/dice$LeftDies.png'),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextButton(
                    onPressed: () {
                      changeDiesFace();
                    },
                    child: Image.asset('images/dice$Rightdies.png'),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
