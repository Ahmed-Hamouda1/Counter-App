import 'package:counter_app/Button.dart';
import 'package:flutter/material.dart';

class TeamOne extends StatelessWidget 
{
  const TeamOne({super.key});

  @override
  Widget build(BuildContext context) 
  {
     return Column
    (
      children: 
      [
        const Text("Team 1",style: TextStyle(fontSize: 30),),
        Text("0",style: TextStyle(fontSize: 150)),
        StanderButton(points: 1,),
        StanderButton(points: 2,),
        StanderButton(points: 3,),
 

      ],
    );
  }
}