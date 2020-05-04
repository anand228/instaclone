import 'package:flutter/material.dart';
import './stories.dart';
import './Posts.dart';
import './HOME.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeData(){
    setState(() {
      HOME();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.camera_alt,
            color: Colors.black,
            size: 32,
          ),
          title: SizedBox(
            height: 45,
          child: (
          Image.asset(
              'assets/logo.png'
             )
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon:Icon(Icons.near_me),
                color: Colors.black,
                iconSize: 32,
                onPressed: () {},
              ),
            )
          ],
        ),
        body: (
        Container(
          child: Column(
            children: <Widget>[
              Stories(),
              Posts(),
            ],
          ),
        )
        ),
        bottomNavigationBar: Container(
          height: 55,
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home),
                  iconSize: 38,
                  color: Colors.black,
                  onPressed: () {}, ),
                IconButton(icon: Icon(Icons.search),iconSize: 38,color: Colors.black,onPressed: (){}, ),
                IconButton(icon: Icon(Icons.add_box),iconSize: 38,color: Colors.black,onPressed: (){}, ),
                IconButton(icon: Icon(Icons.favorite_border),iconSize: 37,color: Colors.black,onPressed: (){}, ),
                IconButton(icon: Icon(Icons.person_outline),iconSize: 40,color: Colors.black,onPressed: (){}, ),
              ],
            ),
          ),

        ),
      )
    );
  }
}
