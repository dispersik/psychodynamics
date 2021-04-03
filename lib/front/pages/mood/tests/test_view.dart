import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

class TestWebView extends StatefulWidget {
  TestWebView({@required this.url});

  final String url;
  WebViewController _webViewController;

  @override
  TestWebViewState createState() => TestWebViewState();
}

class TestWebViewState extends State<TestWebView> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () async =>
                print(await widget._webViewController.currentUrl()),
          ),
        ],
        title: Text('title'),
      ),
      body: WebView(
        onWebViewCreated: (controller) {
          widget._webViewController = controller;
        },
        onPageFinished: (str) {
          print("web view state: $str\n\n\n\n\n\n\n\n\n\n\n");
        },
        initialUrl: widget.url,
      ),
    );
  }
}
