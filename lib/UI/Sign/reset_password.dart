import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoho_wines/UI/Sign/check_mail.dart';

class reset extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         child: Column(
           children: [
             SizedBox(height: 50),
             MaterialButton(
               onPressed: ()
               {
                 Navigator.pop(context);
               },
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                  Image.asset('assets/images/back.png'),
                   SizedBox(width: 5,),
                   Text('Back',
                     style: TextStyle(
                         color: Colors.black54,
                         fontSize: 13,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'Poppins'
                     ),
                   ),
                 ],
               ),
             ),
             SizedBox(height: 10),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 SizedBox(width: 20),
                 Text('Reset Password',
                   style: TextStyle(
                       color: Colors.black54,
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                       fontFamily: 'Poppins'
                   ),
                 ),
               ],
             ),
             SizedBox(height: 10),
             Padding(
               padding: EdgeInsets.only(left: 20,right: 20),
               child: Text('Please enter the email associated with your account and we will send instructions to reset your password.',
               style:  TextStyle(
                 color: Colors.black45,
                 fontWeight: FontWeight.normal,
                 fontFamily: 'Poppins',
                 fontSize: 12
               ),
               ),
             ),
             SizedBox(height: 30),
             Padding(
               padding: EdgeInsets.fromLTRB(20,5,20,15),
               child:Container(
                 decoration: new BoxDecoration(
                     color: Color(0xFFC4C4C4),
                     borderRadius: new BorderRadius.only(
                       bottomLeft: const Radius.circular(20.0),
                       topLeft:const Radius.circular(20.0),
                       bottomRight: const Radius.circular(20.0),
                       topRight: const Radius.circular(20.0),
                     )
                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(left:20.0,right: 20),
                   child: TextField(
                     keyboardType: TextInputType.text,
                     decoration: InputDecoration(
                         hintText: 'Enter email',
                         border: InputBorder.none,
                         hintStyle: TextStyle(
                             color:Colors.black38,
                             fontFamily: 'Poppins',
                             fontSize: 12
                         )
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 10),
             Padding(
               padding: const EdgeInsets.only(left:22.0,right:22.0),
               child: RaisedButton(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 color: Color(0xFFD60042),
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>
                   check_mail()
                   ));
                 },
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(13.0),
                       child: Text('Send Email ',
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 14,
                             fontWeight: FontWeight.normal,
                             fontFamily: 'Poppins'
                         ),
                       ),
                     )
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
     );
  }
  
  
}