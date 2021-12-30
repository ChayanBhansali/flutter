import 'dart:ffi';

import 'package:flutter/material.dart';
import 'pages//chatspace.dart';

void main() {
  runApp( MaterialApp(
    home: Home(),
  routes: {
    '/chatspace' : (Content) => chatroom(),
  },

  ));
}
class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int followers = 564;
  var following = 'FOLLOWING';
  bool follownotClicked = true ;
  var strInFollowTab = 'FOLLOW';
  var strinabbtab = 'ADD';
  bool addNotClicked = true;


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
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/walpaper.png'),
                    fit: BoxFit.cover,
    ),
    ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
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
                      const Text('HOT DOG',
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                      ),
                      ),
                      const Text('United Kingdom',
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
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                           const Text('235',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('400',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('92',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
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
                                if (follownotClicked) {
                                  followers += 1;
                                  strInFollowTab = 'Following';
                                  follownotClicked = false;
                                } else {
                                  strInFollowTab = 'Follow';
                                  followers -= 1;
                                  follownotClicked= true;
                                }
                              });},
                            child: Text(strInFollowTab),
                            color: Colors.blueAccent,
                          ),
                          SizedBox(width: 40.0),
                          FlatButton(
                            onPressed: () {setState(() {
                              if (addNotClicked) {
                                showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                      title: Text('Dialog Title'),
                                      content: Text('Mr Hot Dog has been added'),
                                    )
                                );

                                addNotClicked = false;
                                strinabbtab = 'ADDED';
                              } else {
                                addNotClicked = true;
                                showDialog(
                                    context: context,
                                    builder: (_) => const AlertDialog(
                                  title: Text('Dialog Title'),
                                  content: Text('Mr Hot Dog has been removed'),
                                )
                                );
                                strinabbtab = 'ADD';

                              }
                            });},
                            child: Text(strinabbtab.toString()),
                            color: Colors.orange,
                          ),
                          SizedBox(width: 40.0),
                          FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/chatspace');
                            },
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
            ),

          ],
        ),
      ),

    );
  }
}
