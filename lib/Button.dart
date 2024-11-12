import 'package:flutter/material.dart';

class StanderButton extends StatelessWidget 
{
  final int points;
  final  action;
  StanderButton({required this.points,required this.action});

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: EdgeInsets.all(10),
      child: MaterialButton
      (
        onPressed: action,
        child: Text("Add $points point",style: TextStyle(fontSize: 17),),
        color: Colors.amber,
        height: 50,
        minWidth: 150 ,
      ),
    );

  }
}