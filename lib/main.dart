import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/buttons.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.contrast, color: Colors.white,),
              onPressed: (){},
            )
          ],
          backgroundColor: Colors.white30,
          title: const Text(
            "Calculator",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black26,
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
      ),
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