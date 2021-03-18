import 'package:flutter/material.dart';

class password_update extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  GestureDetector(
                    child: Image.asset('assets/images/back.png'),
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 15),
                  Text('Update Password',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFD60042)
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:40.0,right:10,top: 10),
              child: Text("Your new password must be different from previous used passwords",
              style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Poppins',
                fontSize: 11
              ),
              ),
            ),
            SizedBox(height: 20),
           Container(
             height: 200,
             width: 200,
             child: Image.asset('assets/images/laptop.png'),
           ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.fromLTRB(20,5,20,5),
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
                        hintText: 'Enter current password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color:Colors.black38,
                            fontFamily: 'Poppins',
                            fontSize: 9
                        )
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,5,20,5),
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
                        hintText: 'Enter new password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color:Colors.black38,
                            fontFamily: 'Poppins',
                            fontSize: 9                        )
                    ),
                  ),
                ),
              ),
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
                        hintText: 'Confirm new password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color:Colors.black38,
                            fontFamily: 'Poppins',
                            fontSize: 9
                        )
                    ),
                  ),
                ),
              ),
            ),
           SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left:25.0,right:25.0,top: 10),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Color(0xFFD60042),
                onPressed: () {
                  //navigate to intro
//                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
//                      alcohol()
//                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Update profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal
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