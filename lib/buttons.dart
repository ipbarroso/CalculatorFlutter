import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
    final String label;
    final VoidCallback onPressed;

    const CalcButton({super.key, required this.label, required this.onPressed});

@override
Widget build(BuildContext context){
    return CupertinoButton.filled(
        padding: EdgeInsets.all(30),
        borderRadius: BorderRadius.circular(50),
        onPressed: onPressed, 
        child: Text(
          label, 
          style: const TextStyle(fontSize: 24),
        ),
      );
    }
}


final List<List<CalcButton>> mathButtons = [

      //row 1
      [
      CalcButton(label: '<-', onPressed: (){}),
      CalcButton(label: 'AC', onPressed: (){}),
      CalcButton(label: '%', onPressed: (){}),
      CalcButton(label: '/', onPressed: (){}),
      ],
      
      //row 2
      [
      CalcButton(label: '7', onPressed: (){}),
      CalcButton(label: '8', onPressed: (){}),
      CalcButton(label: '9', onPressed: (){}),
      CalcButton(label: 'x', onPressed: (){}),
      ],
      
      //row 3
      [
      CalcButton(label: '4', onPressed: (){}),
      CalcButton(label: '5', onPressed: (){}),
      CalcButton(label: '6', onPressed: (){}),
      CalcButton(label: '-', onPressed: (){}),
      ],

      //row 4
      [
      CalcButton(label: '1', onPressed: (){}),
      CalcButton(label: '2', onPressed: (){}),
      CalcButton(label: '3', onPressed: (){}),
      CalcButton(label: '+', onPressed: (){}),
      ],

      //ROW 5
      [
      CalcButton(label: '+/-', onPressed: (){}), 
      CalcButton(label: '0', onPressed: (){}),
      CalcButton(label: '.', onPressed: (){}),
      CalcButton(label: '=', onPressed: (){}),
      ],
      ];
        