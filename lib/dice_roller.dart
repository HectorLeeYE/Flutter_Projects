import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;
  var activeDiceImage = 'assets/dice-2.png';

  void rollDice() {
    setState( () {          //Use this to reupdate UI and ensure changes 
      currentDiceRoll =randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/dice-$currentDiceRoll.png';      //allows for inserting chars into filePaths 
    });
  }

  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min, //center vertically only way
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice'),
          )
        ]);
  }
}
