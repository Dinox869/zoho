import 'package:flutter/material.dart';

class my_profile extends StatefulWidget
{
  @override
  My_profile createState()=> My_profile();
}

class My_profile extends State<my_profile>
{
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                 Text('My Profile',
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
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/line.png'),
                ),
              ],
            ),
            SizedBox(height: 15),
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
                        hintText: 'Name',
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
                        hintText: 'Enter email',
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
                        hintText: 'Date of birth',
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
              padding: const EdgeInsets.only(left:35.0,top:15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Gender',
                     style: TextStyle(
                      color:Colors.black38,
                      fontFamily: 'Poppins',
                      fontSize: 12
                  ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Radio(
                  value: 1,
                  activeColor: Colors.grey,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'ONE';
                      id = 1;
                    });
                  },
                ),
                Text(
                  'Male',
                  style: new TextStyle(
                      color:Colors.black38,
                      fontFamily: 'Poppins',
                      fontSize: 12
                  ),
                ),

                Radio(
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'TWO';
                      id = 2;
                    });
                  },
                ),
                Text(
                  'Female',
                  style: new TextStyle(
                      color:Colors.black38,
                      fontFamily: 'Poppins',
                      fontSize: 12
                  ),
                ),

                Radio(
                  value: 3,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'THREE';
                      id = 3;
                    });
                  },
                ),
                Text(
                  'Other',
                  style: new TextStyle(
                      color:Colors.black38,
                      fontFamily: 'Poppins',
                      fontSize: 12
                  ),
                ),
              ],
            ),
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