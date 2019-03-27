import 'package:flutter/material.dart';
import 'util/InteractNative.dart';
// import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      // theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Page')),
      body: Center(
        child: new GestureDetector(
          onTap: () async {
            print('click');

            //安卓原生弹窗接口
            // InteractNative.goNativeWithValue(
            //         InteractNative.methodNames['showdialog'])
            //     .then((success) {
            //   print(success);
            // }).catchError((error) {
            //   print(error.toString());
            // });
            try {
              final result = await InteractNative.goNativeWithValue(
                  InteractNative.methodNames['showdialog']);
              print(result);
            } catch (e) {
              print(e.toString());
            }
          },
          child: Text('home页面'),
        ),
      ),
    );
  }
}
