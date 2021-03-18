import 'package:flutter/material.dart';

class create_club extends StatefulWidget
{
  @override
  Club createState()=> Club();
}

class Club extends State<create_club>
{
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
                  Text('Create Club',
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
            Container(
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width/1,
                      color: Color(0xFFC4C4C4),
                      child: Icon(Icons.image,color: Colors.black38,)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,bottom: 5),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.black45,
                          child: CircleAvatar(
                            radius: 39,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(height: 10),
            Container(
              color: Color(0xFFC4C4C4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Club details',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,15,20,1),
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
//                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Card holder name',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color:Colors.black38,
                            fontFamily: 'Poppins',
                            fontSize: 10
                        )
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,5,20,10),
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
//                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Type a description',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color:Colors.black38,
                            fontFamily: 'Poppins',
                            fontSize: 10
                        )
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:18.0),
              child: ListTile(
                title: Text('Privacy',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text('Choose a privacy level for your club',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 9,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:18.0),
              child: ListTile(
                leading: Radio(value: true, groupValue: null, onChanged: null),
                title: Text('Public',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text('Anyone can see whos in the club and what they post',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 9,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:18.0),
              child: ListTile(
                leading: Radio(value: true, groupValue: null, onChanged: null),
                title: Text('Private',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text('Only members can see whos in the club and what they post.',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 9,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}