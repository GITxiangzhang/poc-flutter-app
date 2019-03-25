import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: '导航演示1',
      home: FirstScreen(),
    ));

// ! RaisedButton 按钮组件
// Navigator.push 跳转到下一个页面，两个参数 context 函数
// Navigator.pop 返回到上一个页面，传递一个context函数，但上级页面使用了 Navigator.push
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
      ),
      body: Center(
          child: RaisedButton(
        child: Text('查看商品详情页面'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        },
      )),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情页面'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('详情返回按钮'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
