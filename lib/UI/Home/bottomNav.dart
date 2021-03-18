import 'package:flutter/material.dart';
import 'package:zoho_wines/UI/Home/FABBottomAppBarItem.dart';
import 'package:zoho_wines/UI/Home/FabWithIcons.dart';
import 'package:zoho_wines/UI/Home/Home_page.dart';
import 'package:zoho_wines/UI/Home/layout.dart';
import 'package:zoho_wines/UI/Profile/profile.dart';


class bottomNav extends StatefulWidget
{
  @override
  BottomNav createState()=> BottomNav();
}

class BottomNav extends State<bottomNav>
{

  int _currentIndex = 0;
  final List<Widget> _children = [
    profile(),
    profile(),
    profile(),
    profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      print('its tapped');
      _currentIndex = index;
    });
  }

  Widget _buildFab(BuildContext context) {

    return  FloatingActionButton(
      onPressed: () { },
      tooltip: 'Increment',
      child: Icon(Icons.add),
      elevation: 2.0,
    );
  }

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body:   profile(),
   bottomNavigationBar: FABBottomAppBar(
     color: Colors.black38,
     selectedColor: Color(0xFFD60042),
     onTabSelected: onTabTapped,
     items: [
       FABBottomAppBarItem(
       iconData: Icons.home, text: ''
         ),

       FABBottomAppBarItem(
           iconData: Icons.calendar_today, text: ''
       ),
       FABBottomAppBarItem(
           iconData: Icons.business_center, text: ''
       ),
       FABBottomAppBarItem(
           iconData: Icons.person, text: ''
       ),
     ],
   ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
   floatingActionButton: FloatingActionButton(
     onPressed: () {},
     child: Icon(Icons.camera_alt),
     backgroundColor: Color(0xFFD60042),
     foregroundColor: Colors.white,
     elevation: 2.0,
   ),
 );
  }

}