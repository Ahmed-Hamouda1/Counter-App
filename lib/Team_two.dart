import 'package:counter_app/Button.dart';
import 'package:flutter/material.dart';

class TeamTwo extends StatefulWidget 
{
  int pointsTeamTwo=0;
  TeamTwo({required this.pointsTeamTwo});

  @override
  State<TeamTwo> createState() => _TeamTwoState();
}

class _TeamTwoState extends State<TeamTwo> {
  @override
  Widget build(BuildContext context) 
  {
     return Column
    (
      children: 
      [
        const Text("Team 2",style: TextStyle(fontSize: 30),),
        Text("${widget.pointsTeamTwo}",style: TextStyle(fontSize: 150)),
        StanderButton(points: 1,action: (){setState(() {
          widget.pointsTeamTwo += 1;
        });},),
        StanderButton(points: 2,action: (){setState(() {
          widget.pointsTeamTwo += 2;
        });}),
        StanderButton(points: 3,action: (){setState(() {
          widget.pointsTeamTwo += 3;
        });}),
      ],
    );
  }
}