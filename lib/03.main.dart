import 'package:flutter/material.dart';

// 主函数(入口函数) Dart函数
void main() => runApp(MyApp());

// 声明Myapp类 最基础的Text组件
class MyList extends StatelessWidget {
  // 重写build方法
  @override
  Widget build(BuildContext context) {
    // 返回一个Material风格的组件
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.purple,
          child: new Text(
            '傻叉',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          alignment: Alignment.center,
        ),
        new Container(
          width: 180.0,
          color: Colors.red,
          child: new Text(
            '智障',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          alignment: Alignment.center,
        )
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      home: Scaffold(
        body: Center(
          child: new Container(
            height: 200.0,
            child: MyList(),
          ),
        ),
      ),
    );
  }
}
