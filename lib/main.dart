import 'dart:io';

import 'package:flutter/material.dart';
import 'package:multi_radio_app/webview_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'radio_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WebViewPage(),
    );
  }
}

class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.topic),
        ),
        body: Column(
          children: [
            ListTile(
              title: Icon(Icons.radio),
            ),
            Divider(),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(radioDataList[index].title, style: TextStyle(fontSize: 18)),
                    subtitle: Text(radioDataList[index].url),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WebViewPages(radioData: radioDataList[index])),
                      );
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemCount: radioDataList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
