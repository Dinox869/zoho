import 'package:flutter/material.dart';

class comment extends StatefulWidget
{
  @override
  Comment createState()=> Comment();
}

class Comment extends State<comment>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: ()
          {
            Navigator.pop(context);
          },
          child: Image.asset('assets/images/back.png'),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top:2.0),
          child: Text('Add comments',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.black54
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Post',
            style: TextStyle(
                color: Color(0xFFD60042),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 12
            ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right:8.0,left:8.0,top:20),
              child: TextFormField(
                minLines: 2,
                maxLines: 150,
                style: TextStyle(
                  color: Colors.black45,
                  fontFamily: 'Poppins',
                  fontSize: 12,

                ),
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'Write a comment...',
                  hintStyle: TextStyle(
                      color: Colors.grey
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(icon: Icon(Icons.perm_media,size: 20,color: Colors.black38), onPressed: null)
          ],
        ),
      ),
    );
  }

}