

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/locales.g.dart';

class PropertyLookUpView extends StatefulWidget {
  const PropertyLookUpView({super.key});

  @override
  State<PropertyLookUpView> createState() => _PropertyLookUpViewState();
}

class _PropertyLookUpViewState extends State<PropertyLookUpView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.propertyLookUp.tr , style: GoogleFonts.openSans(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22)),
      ),

    );
  }
}
