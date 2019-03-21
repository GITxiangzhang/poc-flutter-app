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
          child: Text('Hello World',textAlign: TextAlign.left),
        ),
      ),
    );
  }
}
