import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoho_wines/UI/Drawer/my_clubs.dart';
import 'package:zoho_wines/UI/Drawer/my_preferences.dart';
import 'package:zoho_wines/UI/Drawer/password_update.dart';
import 'package:zoho_wines/UI/Profile/my_profile.dart';

class profile extends StatefulWidget
{
  @override
  Profile createState()=> Profile();
}

class Profile extends State<profile>
{
  List<String> piclist = [
    'assets/images/pic1.png',
        'assets/images/pic2.png',
        'assets/images/pic3.png',
        'assets/images/pic4.png',
        'assets/images/pic5.png',
        'assets/images/pic6.png',
        'assets/images/pic7.png',
        'assets/images/pic8.png',
        'assets/images/pic9.png',
        'assets/images/pic10.png',
        'assets/images/pic12.png',
       'assets/images/pic11.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Container(
        width: MediaQuery.of(context).size.width/1.6,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>
            [
              SizedBox(height: 25),
              //my profile
              ListTile(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  my_profile()
                  ));
                },
                title: Text('My Profile',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 12,
                  fontFamily: 'Poppins'
                ),
                ),
                leading: Icon(Icons.person,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //order
              ListTile(
                title: Text('My Orders',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.shopping_bag,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //My orders
              ListTile(
                title: Text('My Tickets',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.panorama_wide_angle,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //myclub
              ListTile(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      my_clubs()
                  ));
                },
                title: Text('My clubs',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.all_inclusive,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //fav
              ListTile(
                title: Text('Favorites',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.favorite
                    ,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //calc
              ListTile(
                title: Text('Party calculator',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.calculate,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //wine
              ListTile(
                title: Text('Wine comparison',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.wine_bar,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //my wine
              ListTile(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      my_preferences()
                  ));
                },
                title: Text('My wine preferences',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.settings,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //password
              ListTile(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  password_update()
                  ));
                },
                title: Text('Password',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.lock,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //friend
              ListTile(
                title: Text('Refer a friend',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.share,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //help and support
              ListTile(
                title: Text('Help and support',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.headset_mic,color: Color(0xFF62103B),size: 22),
                trailing: Icon(Icons.arrow_forward_ios,size: 11,color: Colors.black38,),
              ),
              //logout
              ListTile(
                title: Text('Logout',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                      fontFamily: 'Poppins'
                  ),
                ),
                leading: Icon(Icons.logout,color: Color(0xFF62103B),size: 22),
              ),
            ],
          ),

        ),
      ),
     body:SingleChildScrollView(
       child: Container(
         child: Column(
           children: [
             SizedBox(height: 20),
             Padding(
               padding: const EdgeInsets.only(left:15.0,right:8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   GestureDetector(
                     child: Image.asset('assets/images/back.png'),
                     onTap: ()
                     {
                       Navigator.pop(context);
                     },
                   ),
                   IconButton(icon: Icon(Icons.more_vert,color: Colors.black54,size: 16), onPressed: null)
                 ],
               ),
             ),
             SizedBox(height: 20),
             Padding(
               padding: const EdgeInsets.only(left:10.0),
               child: Row(
                 children: [
                   CircleAvatar(
                     radius: 50,
                     backgroundImage: AssetImage('assets/images/line.png'),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:8.0),
                     child: Container(
                       width: MediaQuery.of(context).size.width/1.6,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             'Victoria Munywoki',
                             style: TextStyle(
                                 color: Colors.black54,
                                 fontSize: 23,
                                 fontFamily: 'Poppins',
                                 fontWeight: FontWeight.bold
                             ),
                           ),
                           Text(
                             'Lorem Ipsum is simply dummy text of the printing and typesetting.',
                             style: TextStyle(
                                 color: Colors.black54,
                                 fontSize: 11,
                                 fontFamily: 'Poppins',
                                 fontWeight: FontWeight.normal
                             ),
                           ),
                           RaisedButton(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                             color: Color(0xFFD60042),
                             onPressed: () { },
                             child: Text('+Follow',
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 12,
                                   fontWeight: FontWeight.normal
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   )
                 ],
               ),
             ),
             SizedBox(height: 25),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Container(
                   height: 50,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('26',
                         style: TextStyle(
                             color: Colors.black54,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.bold,
                             fontSize: 14
                         ),
                       ),
                       Text('Post',
                         style: TextStyle(
                             color: Colors.black45,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.bold,
                             fontSize: 12
                         ),
                       )
                     ],
                   ),
                 ),
                 Container(
                   height: 50,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('1365',
                         style: TextStyle(
                             color: Colors.black54,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.bold,
                             fontSize: 14
                         ),
                       ),
                       Text('Followers',
                         style: TextStyle(
                             color: Colors.black45,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.bold,
                             fontSize: 12
                         ),
                       )
                     ],
                   ),
                 ),
                 Container(
                   height: 50,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('966',
                         style: TextStyle(
                             color: Colors.black54,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.bold,
                             fontSize: 14
                         ),
                       ),
                       Text('Following',
                         style: TextStyle(
                             color: Colors.black45,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.bold,
                             fontSize: 12
                         ),
                       )
                     ],
                   ),
                 )
               ],
             ),
             SizedBox(height: 5),
             Container(
                 width: MediaQuery.of(context).size.width/1,
                 height: MediaQuery.of(context).size.height/1.3,
                 padding: EdgeInsets.only(left: 10,right: 10),
                 child: GridView.count(
                     crossAxisCount: 3,
                     physics: ScrollPhysics(),
                     crossAxisSpacing: 2.0,
                     mainAxisSpacing: 2.0,
                     children: List.generate(12, (index) {
                       return Container(
//                     height: 30,
//                     width: 30,
                         child: Image.asset(piclist[index]),
                       );
                     }
                     )
                 )
             ),
           ],
         ),
       ),
     ),
    );
  }

}