import 'package:flutter/material.dart';

class VariableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VARIABLE'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text('Welcome flutter page'),
                RaisedButton(
                  child: Text('弹出原生框'),
                  onPressed: () {},
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'A',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text('Lesson'),
                ),
                ListTile(
                  title: Text(
                    'B',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text('Lesson'),
                ),
                ListTile(
                  title: Text(
                    'C',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text('Lesson'),
                ),
                ListTile(
                  title: Text(
                    'D',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text('Lesson'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
