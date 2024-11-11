import 'package:counter_app/Team_one.dart';
import 'package:counter_app/Team_two.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: Scaffold
      (
        appBar: AppBar(title: Text("Counter App"),backgroundColor: Colors.orange,),
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
                TeamOne(),
                SizedBox(height: 450, child: VerticalDivider(color: Colors.grey,indent: 10,endIndent: 25,thickness: 1,)),
                TeamTwo(),
              ],
            ),
            MaterialButton
            (
              onPressed: (){},
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