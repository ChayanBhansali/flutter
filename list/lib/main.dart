import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Home(),

  ));
}
class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int followers = 564;
  var following = 'FOLLOWING';
  bool notClicked = true ;
  var strInFollowTab = 'FOLLOW';

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0x44000000),
        elevation: 0,
        title: Text("Mr Hot Dog"),
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/walpaper.png'),
                    fit: BoxFit.cover,
    ),
    ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    SizedBox(height: 10.0,),
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/dogg.png'),
                        backgroundColor: Colors.grey[400],
                        radius: 100.0,
                  ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('HOT DOG',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text('United Kingdom',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),
                     ),
                    SizedBox(height: 60.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text( followers.toString(),
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Text('235',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('400',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('92',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text( 'Follower',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text('Following',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text('Posts',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text('Stories',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            onPressed: () {setState(() {
                              followers += 1;
                              strInFollowTab = 'Following';
                            });},
                          child: Text(strInFollowTab),
                          color: Colors.blueAccent,
                        ),
                        SizedBox(width: 40.0),
                        FlatButton(
                          onPressed: () {},
                          child: Text('ADD'),
                          color: Colors.orange,
                        ),
                        SizedBox(width: 40.0),
                        FlatButton(
                          onPressed: () {},
                          child: Text('MESSAGE'),
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                    SizedBox (height: 10.0),

                  ],
                  ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
