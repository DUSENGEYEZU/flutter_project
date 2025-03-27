import 'package:flutter/material.dart';
// import 'package:function_app/text_wiget.dart';
// import 'package:function_app/image_wiget.dart'; // Import the image_wiget.dart file
import 'package:function_app/dice_roller.dart'; // Import the dice_roller.dart file
// Constants for gradient alignment
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class MyApp extends StatelessWidget {
   const MyApp({super.key, required this.colors});
  //adding new constructor 
  // const MyApp.purple({super.key, required this.colors});
  final List<Color> colors;
  // rollDice function
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: DiceRoller(),
        ),
      ),
    );
  }
}
