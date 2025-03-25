import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradinet_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Roll Dice Mini App",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          backgroundColor: const Color.fromARGB(255, 49, 122, 205),
        ),
        body: GradinetContainer([
          Color.fromARGB(255, 41, 97, 143),
          Color.fromARGB(255, 18, 58, 79),
        ]),
      ),
    ),
  );
}
