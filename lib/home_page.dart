import 'package:counter_app/Team_one.dart';
import 'package:counter_app/Team_two.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget 
{
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> 
{
  int pointsTeamOne=0;
  int pointsTeamTwo=0;

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold
      (
        appBar: AppBar(title: const Text("Counter App"),backgroundColor: Colors.orange,),
        body: Column
        (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: 
          [
            Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: 
              [
                TeamOne(pointsTeamOne: pointsTeamOne,),
                const SizedBox(height: 450, child: VerticalDivider(color: Colors.grey,indent: 10,endIndent: 25,thickness: 1,)),
                TeamTwo(pointsTeamTwo: pointsTeamTwo,),
              ],
            ),
            MaterialButton
            (
              onPressed: ()
              {
                setState(() 
                {
                  pointsTeamOne=0;
                  pointsTeamTwo=0;
                });
              },
              child: Text("Reset",style: TextStyle(fontSize: 17),),
              color: Colors.amber,
              height: 50,
              minWidth: 150 ,
            ),
          ],
        ),
      ),
    );
  }
}