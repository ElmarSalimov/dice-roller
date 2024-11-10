import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final random = Random();
  int number = 1;

  void rollDice() {
    setState(() {
      number = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade300,
          title: const Text(
            "Dice Game",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 100,
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/assets/dice-$number.png',
                  width: MediaQuery.of(context).size.width / 2,
                ),
                TextButton(
                    onPressed: rollDice,
                    child: const Text("Roll Dice",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )))
              ],
            ),
          ),
        ));
  }
}
