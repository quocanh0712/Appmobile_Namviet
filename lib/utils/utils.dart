// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dart_extensions/dart_extensions.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ftu_lms/utils/constants.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

class Utils {
  static Color randomColor() {
    return Color(Random().nextInt(0xffffffff)).withAlpha(0xff);
  }

  static Future<String?> loadJsonStringFromAsset(String? filePath) async {
    if (filePath == null || filePath.isEmpty) return null;
    return await rootBundle.loadString(filePath);
  }

  static String getNotEmptyValue(List<String?> list) {
    return list.find((item) => item?.isNotEmpty == true) ?? Constants.EMPTY;
  }

  static String convertIntoBase64(File file) {
    List<int> imageBytes = file.readAsBytesSync();
    String base64File = base64Encode(imageBytes);
    return base64File;
  }

  static Image imageFromBase64String(
    String base64String, {
    double? width,
    double? height,
    BoxFit? fit,
  }) {
    return Image.memory(
      base64Decode(base64String),
      width: width,
      height: height,
      fit: fit,
    );
  }

  static Uint8List dataFromBase64String(String base64String) {
    return base64Decode(base64String);
  }

  static Future<bool?> saveBase64ImageToGallery(String base64String) async {
    Fimber.d("saveBase64ImageToGallery(String $base64String)");
    Uint8List bytes = base64.decode(base64String);
    final directory = await getTemporaryDirectory();
    File file = await File('${directory.path}/essoft-payment-qr-code.jpg').create();
    file.writeAsBytesSync(bytes);
    GallerySaver.saveImage('${directory.path}/essoft-payment-qr-code.jpg');
    return true;
  }
}

extension IndexedIterable<E> on List<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
