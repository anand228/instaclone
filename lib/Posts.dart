import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        Container(
      height: 639.7,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 20,
          itemBuilder: (context,index)
          {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/1.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                              child: (Text(" Death Note"
                              ,style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                              ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(223,0,0,0),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                    Stack(
                      children: <Widget>[
                        Image.asset("assets/1.jpg",fit: BoxFit.fill,),
                      ],
                    ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.favorite,color: Colors.red,size: 32,),
                          Icon(Icons.mode_comment,color: Colors.black,size: 32,),
                          Icon(Icons.share,color: Colors.black,size: 32,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(263, 0, 0, 0),
                        child: Icon(Icons.bookmark_border,color: Colors.black,size: 32,),
                      )
                    ],
                  )
                ],
              ),


            );
          }
      ),
    );


  }
}