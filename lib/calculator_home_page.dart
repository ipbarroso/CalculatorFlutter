import 'package:flutter/material.dart';
import 'package:calculator/buttons.dart';
import 'package:calculator/main.dart';

class Calculatorhomepage extends StatelessWidget{
  const Calculatorhomepage ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.white30,
          title: const Text(
            'Calculator',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 40
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.contrast, color: Colors.white,),
              onPressed: (){},
            )
          ],
        ),
        body: Column(
          children: [
            const InputBar(), 
            Expanded(
              child: FractionallySizedBox(
                heightFactor: 0.75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: mathButtons.map((row) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: row,
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      );
  }
}