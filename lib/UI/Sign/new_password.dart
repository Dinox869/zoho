import 'package:flutter/material.dart';

class new_password extends StatelessWidget
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
                Text('Create new password',
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
              child: Text('Your new password must be different from previous used passwords.',
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
              padding: EdgeInsets.fromLTRB(20,5,20,1),
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
                            color:Colors.black38,
                            fontFamily: 'Poppins',
                            fontSize: 12
                        )
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text('Must be atleast 8 characters',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 9,
                  fontFamily: 'Poppins'
                ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,5,20,1),
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
                        hintText: 'Confirm password',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text('Both passwords must match',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 9,
                      fontFamily: 'Poppins'
                  ),
                )
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left:22.0,right:22.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Color(0xFFD60042),
                onPressed: () {

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text('Reset Password ',
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