import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoho_wines/UI/Sign/new_password.dart';

class check_mail extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFFFFFFF),
      body:Container(
        color: Color(0xFFFFFFFF),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(top:138.0),
              child: Image.asset('assets/images/zoho_pic.png'),
            ),
//            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom:198.0),
              child: Container(
                child: Column(
                  children: [
                    Center(
                      child: Text('Check your mail',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text('Please check the instruction sent to ',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'
                      ),
                    ),
                    Text('your email',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 28.0),
              child: Container(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Did not receive the email? Check your spam filter,',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        new_password()
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('or ',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                          ),
                          ),
                          Text('try another email address',
                            style: TextStyle(
                              color: Color(0xFFD60042),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      )
    );

  }

}