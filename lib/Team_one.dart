import 'package:counter_app/Button.dart';
import 'package:flutter/material.dart';

class TeamOne extends StatefulWidget 
{
  int pointsTeamOne=0;
  TeamOne({required this.pointsTeamOne});

  @override
  State<TeamOne> createState() => _TeamOneState();
}

class _TeamOneState extends State<TeamOne>
{
  @override
  Widget build(BuildContext context) 
  {
     return Column
    (
      children: 
      [
        const Text("Team 1",style: TextStyle(fontSize: 30),),
        Text("${widget.pointsTeamOne}",style: TextStyle(fontSize: 150)),
        StanderButton(points: 1,action: (){setState(() {
          widget.pointsTeamOne += 1;
        });},),
        StanderButton(points: 2,action: (){setState(() {
          widget.pointsTeamOne += 2;
        });}),
        StanderButton(points: 3,action: (){setState(() {
          widget.pointsTeamOne += 3;
        });}),
      ],
    );
  }
}