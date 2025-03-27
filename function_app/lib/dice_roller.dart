import 'package:flutter/material.dart';
import 'package:function_app/text_wiget.dart';
import 'package:function_app/image_wiget.dart'; 
import 'dart:math';
final randomizer = Random();
class DiceRoller extends StatefulWidget {
 const  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    // this will return the state of dice roller class
    return _DiceRollerState();
    
  }
}

class _DiceRollerState extends State<DiceRoller> {

   var activeDiceImage='assets/images/dice-2.png';
   var currentDiceRoller = 2;
  void rollDice() {
     var diceRoll = randomizer.nextInt(6)+1; //0<>6
    // to re-excute the build method
     currentDiceRoller=diceRoll;
    setState(() {
      // Call a varible of function need to be change in UI
      activeDiceImage='assets/images/dice-$diceRoll.png';
    });
    // same logic here;
  }
  @override
  Widget build(BuildContext context) {
   
    return Column(
      // Use a Column widget to stack the widgets vertically
      // make sure does not take all vertical space
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          MainAxisAlignment.center, // Position the children in the center
      children: [
        MyTextWidget("Dice Image and rotate"),
        MyImageWidget(activeDiceImage), // Use the correct class name
        // Just adding padding between the dice image and button
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            // Call the rollDice function when the button is pressed
            rollDice();
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue, // Add a background color
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 32.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}
