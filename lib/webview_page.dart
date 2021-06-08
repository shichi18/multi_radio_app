import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'radio_data.dart';

class WebViewPages extends StatelessWidget {
  const WebViewPages({
    Key? key,
    required this.radioData,
  }) : super(key: key);

  final RadioData radioData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(radioData.title),
      ),
      body: WebView(
        initialUrl: radioData.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
