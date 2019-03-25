import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ! Row 组件分灵活排列和非灵活排列

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView widget',
      // ! 非灵活水平布局
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: new Text('非灵活水平布局'),
      //   ),
      //   body: Row(
      //     children: <Widget>[
      //       new RaisedButton(
      //         onPressed: () {},
      //         color: Colors.redAccent,
      //         child: new Text('红色按钮', style: TextStyle(color: Colors.white)),
      //       ),
      //       new RaisedButton(
      //         onPressed: () {},
      //         color: Colors.yellowAccent,
      //         child: Text('黄色按钮', style: TextStyle(color: Colors.black)),
      //       ),
      //       new RaisedButton(
      //         onPressed: () {},
      //         color: Colors.blueAccent,
      //         child: Text('蓝色按钮', style: TextStyle(color: Colors.pink)),
      //       )
      //     ],
      //   ),
      // ),
      // !灵活水平布局
      home: Scaffold(
        appBar: AppBar(
          title: Text('灵活水平布局'),
          backgroundColor: Colors.red,
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.redAccent,
                child: new Text(
                  '红色按钮',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.yellowAccent,
                child: Text(
                  '黄色按钮',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.blueAccent,
                child: Text(
                  '蓝色按钮',
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            )
          ],
        ),
      ),
      // ! 灵活与不灵活混用
      // ! 只要把 Expanded 前缀去掉就可以
    );
  }
}
