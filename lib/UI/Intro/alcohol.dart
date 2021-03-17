import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:zoho_wines/UI/Intro/sipping.dart';

class alcohol extends StatefulWidget
{
  @override
  Alcohol createState()=> Alcohol();
}

class Alcohol extends State<alcohol>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          children: [
            SizedBox(height:170),
            Image.asset("assets/images/alcohol.png"),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('I like my wine with a little bit of alcohol',
                style:TextStyle(
                  color:Colors.black54,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                )
                )
              ],
            ),
            SizedBox(height: 15),
            GroupButton(
              spacing: 5,
              isRadio: true,
              direction: Axis.horizontal,
              onSelected: (index, isSelected){},
              buttons: ["😁 Yes I do!","🙂 Not so much.","🙁 No I Dont!"],
              selectedTextStyle: TextStyle(
              fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.green,
              ),
              unselectedTextStyle: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.grey[600],
              ),
              selectedColor: Colors.white,
              unselectedColor: Colors.grey[300],
              selectedBorderColor: Colors.green,
              unselectedBorderColor: Colors.grey[500],
              borderRadius: BorderRadius.circular(30.0),
              selectedShadow: <BoxShadow>[BoxShadow(color: Colors.transparent)],
              unselectedShadow: <BoxShadow>[BoxShadow(color: Colors.transparent)],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left:68.0,right: 68),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Color(0xFFD60042),
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  sipping()
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Next',
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
        )
      )
    );
  }

}