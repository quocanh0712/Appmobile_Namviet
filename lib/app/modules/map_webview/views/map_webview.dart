
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapWebView extends StatefulWidget {
  const MapWebView({super.key});

  @override
  State<MapWebView> createState() => _MapWebViewState();
}

class _MapWebViewState extends State<MapWebView> {


  // final webController = WebViewController()
  //   ..setJavaScriptMode(JavaScriptMode.disabled)
  //   ..loadRequest(Uri.parse('https://viettech.itch.io/map3d'));
  late  InAppWebViewController webController;
  //https://viettech.itch.io/map3d

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Bản đồ trường học',
          style: GoogleFonts.openSans(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri('https://viettech.itch.io/map3d'),
        ),
        onWebViewCreated: (InAppWebViewController webviewController) {
          webController = webviewController;
        },
        onLoadStop: (controller, url) async {
          await controller.evaluateJavascript(source: """
            window.scrollTo(0, document.body.scrollHeight);
          """);
        },
      ),
    );
  }
}
