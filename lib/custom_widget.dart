import 'package:flutter/material.dart';

//Widgets:
//    CustomGradient
//    Ctext
//Vars
const  Color majorColor=Colors.orangeAccent;
const Alignment beginAlignment=Alignment.topLeft;
const  Alignment endAlignment=Alignment.bottomRight;


class CustomGradient extends StatelessWidget{
  const CustomGradient({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const  BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98)],
          begin: beginAlignment,
          end: endAlignment)),
      child: const Center(
        child:  Column(children: [
          SizedBox(height: 10,),
          //Text("Hello Welcome! ",style: TextStyle(fontSize: 28, color: Colors.white),),
          Ctext(text: "L4FeeR !",fsize: 28,),
          SizedBox(height: 100,),
          Ctext(text: "Learning this flutter to create an app!",fsize: 22),
        ],
        ),
      ),
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
  