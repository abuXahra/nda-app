import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';  // ADD

import 'src/navigation_controls.dart';                  // ADD
import 'src/web_view_stack.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  // Add from here...
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://nda.amrahintegrated.com.ng'),
      );
  }
  // ...to here.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   //   appBar: AppBar(
     //   title: const Text('Flutter WebView'),
        // Add from here...
        // actions: [
        //   NavigationControls(controller: controller),
        // ],
        // ...to here.
      //),
      body: SafeArea(child: WebViewStack(controller: controller)),       // MODIFY
    );
  }
}