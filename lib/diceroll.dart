import 'package:flutter/material.dart';
import 'custom_widget.dart';
import 'dart:math';
class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var genRan=1;
  
  void rollDice(){
    setState(() {
    genRan=Random().nextInt(6)+1;
    //activeDiceImage="assets/dice-$genRan.png";
    //print("Clicked assets/dice-$genRan.png.......");
    });
      }
  @override
  Widget build(BuildContext context) {
    return  Center(

        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          const SizedBox(height: 10,),
          //Text("Hello Welcome! ",style: TextStyle(fontSize: 28, color: Colors.white),),
          const Ctext(text: "L4FeeR !",fsize: 28,),
          const SizedBox(height: 100,),
          const Ctext(text: "Click Roll and see magic",fsize: 22),
          Image.asset('assets/dice-$genRan.png', width: 200, height: 200,),
          const SizedBox(height: 20,),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(alignment: Alignment.center, foregroundColor: Colors.black, padding: const EdgeInsets.all(20)),
           child: const Text("Roll", style: TextStyle(color: Colors.black, fontSize: 25),),),
        ],
        ),
    );
  }
}