import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VariableScreen extends StatelessWidget {

static const platform = const MethodChannel('pages/variable_screen');
Future<void> popTheAlert() async {
    try {
      final String result = await platform.invokeMethod('popTheAlert');
      print(result);
    } catch (e) {
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('VARIABLE'),
      // ),
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text('Welcome flutter page'),
                RaisedButton(
                  child: Text('弹出原生框'),
                  onPressed: popTheAlert,
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
