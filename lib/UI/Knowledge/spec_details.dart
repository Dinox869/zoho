import 'package:flutter/material.dart';

class spec_details extends StatelessWidget
{

  String texting = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet porttitor'
  'risus. Donec viverra nec metus vitae placerat. Interdum et malesuada fames ac an'
  'te ipsum primis in faucibus. Donec gravida, libero suscipit fermentum aliquam, lect'
  'us orci sagittis ligula, in viverra leo lorem sollicitudin dolor. Sed nisl est, porttitor sed'
  'viverra quis, gravida in eros. Orci varius natoque penatibus et magnis dis parturient'
  'montes, nascetur ridiculus mus. Curabitur at risus quis dolor maximus faucibus. Nul'
  'lam sollicitudin felis nec ullamcorper fermentum. Quisque in est diam. ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 250,
              child: Image.asset('assets/images/wine_bottle.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right:10),
              child: Text('5 Perfect Picnic wines, according to a wine expert from Kenya || By Victoria Munywoki',
                style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 13
                ),
              ),
            ),
            SizedBox(height:5),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.watch_later,color: Colors.black38,size: 10,),
                      Text('Thursday, 11th March, 2021',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 6,
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right:10.0,top: 4),
                      child:Icon(Icons.share,color: Colors.black38,size: 14,)
//                        Image.asset('assets/images/share.png'),
                  )
                ],
              ),
            ),
            SizedBox(height:15),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(texting, style: TextStyle(
               fontFamily: 'Poppins',
               fontWeight: FontWeight.normal,
               fontSize: 9,
               color: Colors.black45
             ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(texting, style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  fontSize: 9,
                  color: Colors.black45
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(texting, style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  fontSize: 9,
                  color: Colors.black45
              ),
              ),
            )
          ],
        ),
      ),
    );
  }

}