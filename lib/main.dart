import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: WebViewPage());
  }
}

class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.radio)),
                    Tab(
                      text: '超A&G',
                    ),
                    Tab(
                      text: '音泉',
                    ),
                    Tab(
                      text: '響',
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'ラジオ まとめ',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('超A&G'),
                        Text('音泉'),
                        Text('響'),
                      ],
                    ),

                  ],
                ),
              ),
              WebView(
                initialUrl: 'https://www.uniqueradio.jp/agplayer5/player.php',
                javascriptMode: JavascriptMode.unrestricted,
              ),
              WebView(
                initialUrl: 'https://www.onsen.ag/',
                javascriptMode: JavascriptMode.unrestricted,
              ),
              WebView(
                initialUrl: 'https://hibiki-radio.jp/',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
