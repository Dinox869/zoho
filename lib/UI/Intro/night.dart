import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';


class night extends StatefulWidget
{
  @override
  Night createState()=> Night();

}

class Night extends State<night>
{

  bool checker  = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            child: Column(
              children: [
                SizedBox(height:170),
                Image.asset("assets/images/night.png"),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Please select your wine preferences',
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
                  buttons: ["Sparkling Wine","Rose Wine","White Wine","Dessert Wine","Fortified Wine","Red Wine"],
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
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Please confirm that you are above the legal',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.black38
                    ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('drinking age(18years)',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.black38
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('I am above 18 year old',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.black38
                      ),
                    ),
                    SizedBox(width: 5),
                    Checkbox(value:checker , onChanged: null)
                  ],
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left:68.0,right: 68),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    color: Color(0xFFD60042),
                    onPressed: () {

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