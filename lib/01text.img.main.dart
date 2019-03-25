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
        // 创建一个Bar,并添加文本
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          // child: Text(
          //   'Hello World.loreamloreamloreamloreamloreamloreamloreamloreamloreamloreamloreamloreamloreamloreamloreamloream',
          //   textAlign: TextAlign.right,
          //   overflow: TextOverflow.ellipsis, // 文本超出显示省略号
          //   maxLines: 2, // 最多显示的行数
          //   style: TextStyle(
          //     fontSize: 25.0,
          //     color: Color.fromARGB(255, 255, 0, 0), // ARBG 第一个参数表示透明度，0透明-255不透明
          //     decoration: TextDecoration.underline,
          //     decorationStyle: TextDecorationStyle.dotted,
          //   ),
          // ),
          child: Container(
            // child: new Text(
            //   '全天下最好的我',
            //   style: TextStyle(
            //       fontSize: 25.0, color: Color.fromARGB(255, 255, 255, 0)),
            // ),
            child: new Image.network(
              'https://images2017.cnblogs.com/blog/307555/201711/307555-20171114154734827-504164781.png',
              scale: 1.0,
              fit:BoxFit.fill, // 全图显示，会被拉伸
              color: Colors.pink,
              colorBlendMode: BlendMode.darken, // 图形与背景颜色混合
              repeat: ImageRepeat.repeatY, // 图形重复
            ),
            alignment: Alignment.topCenter, // 容器盒子的布局 颜色和大小
            width: 500.0,
            height: 500.0,
            // color: Colors.lightBlue, // color 和 decoration 不能同时存在
            // padding: const EdgeInsets.all(10.0),
            // padding: const EdgeInsets.fromLTRB(50.0, 20.0, 10.0, 6.0),
            // margin: const EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.red, Colors.teal]),
              border: Border.all(width: 3.0, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
