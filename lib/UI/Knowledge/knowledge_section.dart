import 'package:flutter/material.dart';
import 'package:zoho_wines/UI/Knowledge/spec_details.dart';

class knowledge_section extends StatefulWidget
{
  @override
  know_sec createState()=> know_sec();

}

class know_sec extends State<knowledge_section>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [Container(
          color: Color(0xFFC4C4C4),
          child: Column(
            children: [
              SizedBox(height:35),
              Container(
                color: Color(0xFFC4C4C4),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/back.png'),
                      SizedBox(width: 5,),
                      Text('Knowledge section',
                        style: TextStyle(
                            color: Color(0xFFD60042),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1,
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/1,
                      height: 250,
                      child: Image.asset('assets/images/wine_bottle.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        color: Color(0xFFD60042).withOpacity(0.4),
                        height: 140,
                        width: MediaQuery.of(context).size.width/1.1,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('5 Perfect Picnic wines, according to a wine expert from Kenya || By Victoria Munywoki',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 13
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width/1,
                height:MediaQuery.of(context).size.height/1.8,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext ctxt, int index) =>listdisplay(ctxt,index)
                ),
              )

            ],
          ),
        )
        ],
      ),
    );
  }

  listdisplay(BuildContext ctxt, int index) {
        return GestureDetector(
          onTap: ()
          {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
              spec_details()
              ));
          },
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/1.6,
                        child: Text('South Africa Wine and food tourism conference celebrates countrys top performers.',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 100,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(20.0),
                              topLeft:const Radius.circular(20.0),
                              bottomRight: const Radius.circular(20.0),
                              topRight:const Radius.circular(20.0),
                            )
                        ),
                        child: Image.asset('assets/images/red_bottle.png',
                        fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                  Row(
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
                          child:Icon(Icons.share,color: Color(0xFF62103B),size: 14,)
                        )
                    ],
                  ),
                  Divider(
                    thickness: 0.5,
                    color: Colors.black26,
                  )
                ],
              ),
            ),
          ),
        );
  }

}