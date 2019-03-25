import 'package:flutter/material.dart';

// 主函数(入口函数) Dart函数
void main() => runApp(MyApp());

// 声明Myapp类 最基础的Text组件
class MyApp extends StatelessWidget {
  // 重写build方法
  @override
  Widget build(BuildContext context) {
    // 返回一个Material风格的组件
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          body: new ListView(
            scrollDirection: Axis.horizontal,
            // children: <Widget>[
            //   new ListTile(
            //     leading: new Icon(Icons.verified_user),
            //     title: new Text('全天下最好的我'),
            //   ),
            //   new ListTile(
            //     leading: new Icon(Icons.access_alarm),
            //     title: new Text('闹钟'),
            //   ),new ListTile(
            //     leading: new Icon(Icons.access_alarms),
            //     title: new Text('闹钟不停'),
            //   ),new Image.network('http://www.huangxuewu.com/data/upload/image/201710/ee681c5316b663b06f5b15ad6b92ea19.jpg'),

            // ],
            children: <Widget>[
              new Container(
                width: 200.0,
                color: Colors.pink,
              ),
              new Container(
                child: Center(
                  child: new Text(
                    'https://images2017.cnblogs.com/blog/307555/201711/307555-20171114154734827-504164781.png',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // child: new Text('神的交流区’,style:TextStyle())
                ),
                width: 200.0,
                color: Colors.purple,
              )
            ],
          ),
        ));
  }
}
