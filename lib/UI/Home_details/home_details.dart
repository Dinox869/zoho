import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:zoho_wines/UI/Home_details/comment.dart';

class home_details extends StatefulWidget
{
  @override
  Home createState()=> Home();
}

class Home extends State<home_details>
{

  List<String> imageassets = ["assets/images/line.png","assets/images/black.png","assets/images/rainbow.png","assets/images/pink.png","assets/images/line.png","assets/images/black.png"];

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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width/1,
                height: 250,
                child: Image.asset('assets/images/wine_bottle.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                color: Color(0xFFE5E5E5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconButton(icon: Icon(Icons.thumb_up,color: Color(0xFFD60042),size: 14),
                          onPressed: () {}),
                          Text('23',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 9,
                                fontFamily: 'Poppins'
                            ),
                          ),
                          IconButton(icon: Icon(Icons.comment,color: Colors.black38,size: 14), onPressed: null),
                          Text('11',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 9,
                                fontFamily: 'Poppins'
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(icon: Icon(Icons.bookmark_border,color: Colors.black38,size: 14), onPressed: () {}),
                          IconButton(icon: Icon(Icons.share,color: Colors.black38,size: 14), onPressed: null),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Best weekend Ever!!',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54
                      ),
                    ),
                  ],
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,bottom:5,top:1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Elizabeth Atieno',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        color: Color(0xFF62103B)
                      ),
                    ),
                    SizedBox(width:10),
                    Text(
                      '2hrs ago',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 11,
                          color: Color(0xFF62103B)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ReadMoreText(
                  texting+texting+texting,
                  trimLines: 20,
                  style:  TextStyle(
                      fontSize: 11, fontWeight: FontWeight.normal,
                      fontFamily: 'Poppins',color: Colors.black38),
                  colorClickableText: Colors.black54,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',color: Color(0xFF62103B)),
                  lessStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',color: Color(0xFF62103B)),
                ),
              ),
              SizedBox(height: 30),
              Container(
                color: Color(0xFFE5E5E5),
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      comment()
                      ));
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 17,
                          backgroundImage: AssetImage('assets/images/rainbow.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:10),
                          child:Container(
                            width: MediaQuery.of(context).size.width/1.2,
                            height: 35,
                            decoration: new BoxDecoration(
                                color: Color(0xFFC4C4C4),
                                borderRadius:  new BorderRadius.only(
                                  bottomLeft:   const Radius.circular(5.0),
                                  topLeft:  const Radius.circular(5.0),
                                  bottomRight:  const Radius.circular(5.0),
                                  topRight:   const Radius.circular(5.0),
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Add a comment...',
                                    style: TextStyle(
                                      color:Colors.black38,
                                      fontFamily: 'Poppins',
                                      fontSize: 12
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:5.0),
                                    child: Icon(Icons.send, color: Color(0xFFD60042),size:14),
                                  ),

                                ],
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                width: MediaQuery.of(context).size.width/1,
                height:MediaQuery.of(context).size.height/1.8,
                child: ListView.builder(
                    itemCount: 6,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext ctxt, int index) =>listdisplay(ctxt,index)
                ),
              )
            ],
          ),
        ),
      ),

    );
  }

  listdisplay(BuildContext ctxt, int index) {
    return Container(
      width: MediaQuery.of(context).size.width/1,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage(imageassets[index]),
                ),
                SizedBox(width: 10),
                Text('John Doe',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.black54

                ),
                ),
                SizedBox(width: 35),
                Text('2 Jul',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.black54
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:50.0,right:14.0),
             child: Text('Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec'
              'gravida, libero suscipit fermentum aliquam, lectus orci sagittis ligula, in'
              'viverra leo lorem sollicitudin dolor. Sed nisl est, porttitor sed viverra quis,'
              'gravida in eros. Orci varius natoque penatibus et magnis dis parturient'
              'montes, nascetur ridiculus mus. Curabitur at risus quis dolor maximus fa'
              'ucibus. Nullam sollicitudin felis nec ullamcorper fermentum. Quisque in e'
              'st diam. ',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 11,
              fontFamily: 'Poppins',
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:35.0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.thumb_up,color: Color(0xFFD60042),size: 15), onPressed: null),
                Text('16',style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  color: Colors.black38
                ),),
                SizedBox(width:15),
                IconButton(icon: Icon(Icons.reply,color: Colors.black38,size: 15,), onPressed: null),
                Text('Reply',style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    color: Colors.black38
                ),),

              ],
            ),
          ),
          SizedBox(height: 13),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

}
