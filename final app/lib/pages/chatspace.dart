import 'package:flutter/material.dart';
class chatroom extends StatefulWidget {
  const chatroom({Key? key}) : super(key: key);

  @override
  _chatroomState createState() => _chatroomState();
}

class _chatroomState extends State<chatroom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('yoyo'),
        elevation: 0,
        backgroundColor: Colors.blue[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.phone,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.video_call,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],

      ),
      body: Column(
        children:[
         SizedBox(height: 50,),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/dogg.png'),
              radius: 50.0,
              backgroundColor: Colors.grey,
            ),
          ),
          Text('HOT DOG',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('SAY HI ',
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.black45,
            ),
          ),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextField(
                 decoration: InputDecoration(
                   hintStyle: TextStyle(fontSize: 17),
                   hintText: 'message…',
                 ),
               ),
             ],
           ),
        ],

      ),
    );
  }
}
