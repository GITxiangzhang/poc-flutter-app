import 'package:flutter/material.dart';
import './web_screen.dart';
import './map_screen.dart';
import './carema_screen.dart';
import './variable_screen.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Native list page'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'IN THIS TOPIC',
                      textAlign: TextAlign.center,
                    ),
                    // width: 400.0,
                  ),
                  Container(
                    child: Text(
                      'Dive into the world of coding and master priniciples by writring real code in JavaScript a popular lanage',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
              color: Color.fromARGB(255, 190, 255, 231),
              width: 414.0,
              height: 100.0,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.all(10.0),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'go to web view',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'from native page to web page',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    leading: Icon(
                      Icons.add,
                      color: Colors.blueAccent,
                    ),
                    trailing: Icon(
                      Icons.bookmark,
                      color: Colors.blueAccent,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebScreen(),
                        ),
                      );
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'map',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'get targeting',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    leading: Icon(
                      Icons.my_location,
                      color: Colors.blueAccent,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapScreen(),
                        ),
                      );
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'carema',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'wake up the carema',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    leading: Icon(
                      Icons.camera_enhance,
                      color: Colors.blueAccent,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CaremaScreen(),
                        ),
                      );
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Vatiables',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'store',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    leading: Icon(
                      Icons.storage,
                      color: Colors.blueAccent,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VariableScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
