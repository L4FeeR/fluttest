import 'package:flutter/material.dart';
import 'package:fluttest/diceroll.dart';


//Widgets:
//    CustomGradient
//    Ctext
//Vars
const  Color majorColor=Colors.orangeAccent;
const Alignment beginAlignment=Alignment.topLeft;
const  Alignment endAlignment=Alignment.bottomRight;


class CustomGradient extends StatelessWidget{
   const CustomGradient(this.color1, this.color2, {super.key});
   const CustomGradient.purple({super.key})
  : color1 = const Color.fromARGB(255, 26, 2, 80),color2 = const Color.fromARGB(255, 45, 7, 98);
  CustomGradient.cyan({super.key})
  : color1 = Colors.cyan, color2 = Colors.cyan.shade900;
  final Color color1;
  final Color color2;
  
  @override
  Widget build(context) {
    return Container(
      decoration:   BoxDecoration(
        gradient: LinearGradient(
          colors: [ color1 , color2],
          begin: beginAlignment,
          end: endAlignment)),
      child:  const RollDice()
      );
  }
  }

  class Ctext extends StatelessWidget{
    const Ctext({super.key, required this.text, required this.fsize});
    final String text;
    final double fsize;
    @override
    Widget build(context){
      return  
      Text(text,style: TextStyle(
        color: Colors.white,
        fontSize: fsize,
        letterSpacing: 2,

      ),);
    }
  }
  