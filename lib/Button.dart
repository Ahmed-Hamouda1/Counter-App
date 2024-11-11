import 'package:flutter/material.dart';

class StanderButton extends StatelessWidget 
{
  int ?points;
  StanderButton({required this.points});

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: EdgeInsets.all(10),
      child: MaterialButton
      (
        onPressed: (){},
        child: Text("Add $points point",style: TextStyle(fontSize: 17),),
        color: Colors.amber,
        height: 50,
        minWidth: 150 ,
      ),
    );

  }
}