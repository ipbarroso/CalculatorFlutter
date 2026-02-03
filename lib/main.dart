import 'package:calculator/calculator_home_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculatorhomepage()
    );
  }
}


class InputBar extends StatelessWidget {
  const InputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.white,
      alignment: Alignment.center,
    );
  }
}