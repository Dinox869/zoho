import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//class sign_in extends StatelessWidget
//{
//  @override
//  sign createState()=> sign();
//}

class sign_in extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text('Zoho',
                  style: TextStyle(
                      color: Color(0xFFD60042),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text('Sign in with email',
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
            Padding(
              padding: EdgeInsets.fromLTRB(20,0,20,15),
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
                    enableSuggestions: false,
                    autocorrect: false,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter password!',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors.black38,
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
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text('Sign-in ',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:25.0,top: 5),
                  child: Text('Forgot Password',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    color: Color(0xFFD60042),
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

  }

}