import 'package:flutter/material.dart';
import 'package:zoho_wines/UI/Knowledge/knowledge_section.dart';

class Home_page extends StatefulWidget
{
  @override
  home createState()=> home();
}

class home extends State<Home_page>
{

  List<String> imageassets = ["assets/images/line.png","assets/images/black.png","assets/images/rainbow.png","assets/images/pink.png"];
  List<String> picassets = ["assets/images/hay.png","assets/images/white.png","assets/images/red.png","assets/images/hay.png"];
  List<String> names = ["Victoria","Zawadi Mudibo","Elizabeth Atieno","James Dennis"];
  List<String> topic = ["Best weekend Ever !!","Celebrating our 3rd anniversary","Merry Christmas to all our members!","Best weekend Ever!!"];
  List<String> subtopic = ["Enjoying my glass of wine on the Aberdare mountains. Nothing beats a staycation aay from Nairobi than enjoying your Cabarnet Shiraz. Highly recommending it.","Having dinner with my wife to celebrate our 3rd anniversary tonight.Big shout out to Dennis for sorting us.","We wish you a Merry Christman and thank you for your supprt throughout the year despite having a hard time with the pandemic","Enjoying my glass of wine on the Aberdare mountains. Nothing beats a staycation aay from Nairobi than enjoying your Cabarnet Shiraz. Highly recommending it."];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left:10),
                    child:Container(
                      width: MediaQuery.of(context).size.width/1.4,
                      height: 45,
                      decoration: new BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          borderRadius: new BorderRadius.only(
                            bottomLeft: const Radius.circular(10.0),
                            topLeft:const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:20,right: 20),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 15,
                                color: Colors.black38
                              ),
                              hintStyle: TextStyle(
                                  color:Colors.black38,
                                  fontFamily: 'Poppins',
                                  fontSize: 12
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>
                              knowledge_section()
                              ));
                            },
                            child: Image.asset('assets/images/book.png'),
                          ),
                          IconButton(
                            icon: Icon(Icons.shopping_cart,color: Color(0xFFD60042),),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width/1,
                height: MediaQuery.of(context).size.height/1,
                child: ListView.builder(
                  itemCount: 4,
                    itemBuilder: (BuildContext ctxt, int index) =>listdisplay(ctxt,index)
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

 Widget listdisplay(BuildContext ctxt, int index)
  {

    bool thumbs = false;

    return Container(
      child: Column(
        children: [
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0,right:8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage(imageassets[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(names[index],
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: 'Poppins',
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text('Nairobi, Kenya',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontFamily: 'Poppins',
                                  fontSize: 7
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width/1,
            child: Image.asset(picassets[index],
                fit: BoxFit.cover),
          ),
          Container(
            color: Color(0xFFE5E5E5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(icon:thumbs == true?
                Icon(Icons.thumb_up,size:18,color: Color(0xFFD60042),)
                    :Icon(Icons.thumb_up_alt_outlined,size:18,color: Colors.black38,),
                    onPressed: ()
                    {
                      setState(() {
                        if(thumbs == true)
                        {
                          thumbs = false;
                        }
                        thumbs = true;
                      });
                    }
                ),
                Text('23',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      color: Colors.black45
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.comment_outlined,size:18,color: Colors.black45,),
                    onPressed: ()
                    {
                    }
                ),
                Text('11',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      color: Colors.black45
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,left:8),
            child: Row(
              children: [
                Text(
                  topic[index],
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:2.0,left:8),
            child: Text(
              subtopic[index],
              style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Poppins',
                  fontSize: 9,
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );

  }

}