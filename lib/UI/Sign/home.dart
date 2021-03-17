import 'package:flutter/material.dart';
import 'package:zoho_wines/UI/Intro/alcohol.dart';
import 'package:zoho_wines/UI/Sign/create_account.dart';
import 'package:zoho_wines/UI/Sign/sign_in.dart';

class MyHomePage extends StatefulWidget
{
  @override
  home createState()=> home();
}

class home extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height/1.7,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/wines.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to ',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  'Zoho',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '!',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Share your wine experience.',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left:25.0,right:25),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Color(0xFF1DA1F2),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Vector1.png'),
                    SizedBox(width: 5),
                    Text('Sign-in with Twitter',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25.0,right:25.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                color: Color(0xFF4285F4),
                onPressed: () {
                  //navigate to intro
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      alcohol()
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Vector.png'),
                    SizedBox(width: 5),
                    Text('Sign-in with Google',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 25.0, right: 20.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
                Text('EMAIL',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20, right: 25.0),
                      child: Divider(
                        color: Colors.black,
                        height: 36,
                      )),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFFD60042),
                  elevation: 15,
                  onPressed: () {
                    //nav to email page
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    sign_in()
                    ));

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0,right: 20),
                    child: Text('Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFFD60042),
                  elevation: 15,
                  onPressed: () {
                    //nav to email page
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                        create_account()
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left:20,right: 20),
                    child: Text('Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}