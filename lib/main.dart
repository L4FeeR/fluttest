import 'package:flutter/material.dart';
import 'package:fluttest/custom_widget.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomGradient.purple(),
      ),
      );
  }
}



