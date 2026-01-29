import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/buttons.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.contrast, color: Colors.white,),
              onPressed: (){},
            )
          ],
          backgroundColor: Colors.white30,
          title: Text(
            "Calculator",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black26,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                NegationButton(),
                ZeroButton(),
                DotButton(),
                SolveButton(),
                ], 
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    OneButton(),
                    TwoButton(),
                    ThreeButton(),
                    PlusButton(),
                ],
                ),
                Row( mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                children:[
                    FourButton(),
                    FiveButton(),
                    SixButton(),
                    MinusButton()
                ]
                ),
                Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    SevenButton(),
                    EightButton(),
                    NineButton(),
                    MultiplicationButton(),
                ],
                ),
                Row( mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                children: [
                    ClearButton(),
                    PercentageButton(),
                    DivisionButton(),
                    BackSpaceButton(),
                ]
                ),
            ],
          ),
        ),
        
      ),

    );
  }
}
