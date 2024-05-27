

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ChatBotWebView extends StatefulWidget {
  const ChatBotWebView({super.key});

  @override
  State<ChatBotWebView> createState() => _ChatBotWebViewState();
}

class _ChatBotWebViewState extends State<ChatBotWebView> {


  // final webController = WebViewController()
  //   ..setJavaScriptMode(JavaScriptMode.disabled)
  //   ..loadRequest(Uri.parse('https://viettech.itch.io/map3d'));
  late  InAppWebViewController webController;
  //https://viettech.itch.io/map3d

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title: Padding(
          padding:  EdgeInsets.only(left: 45.h),
          child: Row(
            children: [
              Container(
                  width: 45.w,
                  height: 48.h,
                  child : Lottie.asset("assets/animation/chatbot.json", repeat: true, reverse: true)
              ),
              SizedBox(width: 3.w),
              Padding(
                padding:  EdgeInsets.only(bottom: 1.h),
                child: Text(
                  'Trợ lý AI',
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                  ),
                ),
              ),

            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        bottom: true,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri('https://api.ufl.essoft.vn/chatbot/'),
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
      ),
    );
  }
}
