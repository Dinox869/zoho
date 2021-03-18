import 'package:flutter/material.dart';
import 'package:zoho_wines/UI/Club/create_club.dart';

class my_clubs extends StatefulWidget
{
  @override
  Clubs createState()=> Clubs();
}

class Clubs extends State<my_clubs>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height:40),
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
                  Text('My Clubs',
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
            SizedBox(height:40),
            Container(
              color: Color(0xFFC4C4C4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Clubs',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    )
                ],
              ),
            ),
            //Correction == it should be a listview
            Container(
              margin: EdgeInsets.only(top: 1),
              color: Color(0xFFC4C4C4),
              child: ListTile(
                  leading:CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/pic13.png'),
                  ),
                  title:Text('Red wine club',
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 9,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  trailing:IconButton(
                    icon: Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 13),
                  )
              )
            ),
            Container(
                color: Color(0xFFC4C4C4),
                margin: EdgeInsets.only(top: 1),
                child: ListTile(
                    leading:CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage('assets/images/pic13.png'),
                    ),
                    title:Text('Westlands wine club',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 9,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing:IconButton(
                      icon: Icon(Icons.arrow_forward_ios,color: Colors.black38,size: 13),
                    )
                )
            ),
            Padding(
              padding: const EdgeInsets.only(left:68.0,right: 68,top: 20),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Color(0xFFD60042),
                onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                         create_club()
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('+Create a club',
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