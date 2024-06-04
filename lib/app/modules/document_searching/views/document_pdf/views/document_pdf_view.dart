

import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftu_lms/app/modules/document_searching/views/document_pdf/controllers/document_pdf_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentPdfView extends StatefulWidget {
  const DocumentPdfView({super.key});

  @override
  State<DocumentPdfView> createState() => _DocumentPdfViewState();
}

class _DocumentPdfViewState extends State<DocumentPdfView> {



  late  InAppWebViewController webController;


  @override
  Widget build(BuildContext context) {
    return  GetBuilder<DocumentPdfController>(builder: (controller){
      return Scaffold(
          appBar: AppBar(

            title: Text(
              'PDF',
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 19.sp,
              ),
            ),
            backgroundColor: Colors.white,
          ),
          body: PDF().cachedFromUrl(
           // controller.fileUrl,
            "https://dieuhanhvanban.hnmu.edu.vn/FileUpload/VanBan/2024/6/3/421-CV%C4%90_2024.pdf",
          )
      );
    });
  }
}