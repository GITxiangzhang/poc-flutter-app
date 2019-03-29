import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: {
        '/': (_) => WebviewScaffold(
              url: "https://www.baidu.com/",
              appBar: AppBar(
                title: Text('WebView'),
              ),
            ),
      },
    );
  }
}
