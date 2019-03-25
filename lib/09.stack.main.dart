import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ! Row 组件分灵活排列和非灵活排列

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      // alignment: Alignment.center,
      // 控制叠加层位置
      alignment: FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.pink,
          radius: 100.0,
        ),
        // Container(
        //   // 设置背景色
        //   decoration: BoxDecoration(
        //     color: Colors.purpleAccent,
        //   ),
        //   padding: EdgeInsets.all(5.0),
        //   child: Text('我是最帅的靓仔'),
        // ),
        Positioned(
          child: Text('我是靓仔'),
          left: 0,
          top: 0,
        ),
        Positioned(
          child: Text('你是衰仔'),
          right: 0,
          bottom: 0,
        ),
      ],
    );

    return MaterialApp(
      title: 'Stack widget',
      // !灵活水平布局
      home: Scaffold(
          appBar: AppBar(
            title: Text('Stack布局'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: stack,
          )),
    );
    // ! 灵活与不灵活混用
    // ! 只要把 Expanded 前缀去掉就可以
  }
}
