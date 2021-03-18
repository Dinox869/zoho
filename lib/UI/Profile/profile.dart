import 'package:flutter/material.dart';

class profile extends StatefulWidget
{
  @override
  Profile createState()=> Profile();
}

class Profile extends State<profile>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Image.asset('name')
             ],
           )
         ],
       ),
     ),
    );
  }

}