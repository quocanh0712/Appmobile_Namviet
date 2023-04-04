// Copyright (c) 2022, one of the D3F outsourcing projects. All rights reserved.

// coverage:ignore-file

import 'package:flutter/material.dart';
import 'package:ftu_lms/generated/colors.gen.dart';
import 'package:ftu_lms/generated/fonts.gen.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme_extensions.tailor.dart';

@Tailor(
  themes: ['light', 'dark'],
  themeGetter: ThemeGetter.onBuildContext,
)
class $_ThemeExtensions {
  static List<Color> background = [LMSColors.white, LMSColors.white];
  static List<Color> mainGreen = [LMSColors.mainGreen, LMSColors.red];
  static List<Color> red = [LMSColors.red, LMSColors.red];
  static List<Color> textColor = [LMSColors.textColor, LMSColors.textColor];
  static List<Color> textLightGrey = [LMSColors.textLightGrey, LMSColors.textLightGrey];
  static List<Color> textGrey = [LMSColors.textGrey, LMSColors.textGrey];
  static List<Color> semiGrey = [LMSColors.semiGrey, LMSColors.semiGrey];
  static List<Color> bgGrey = [LMSColors.bgGray, LMSColors.bgGray];
  static List<Color> subYellow = [LMSColors.subYellow, LMSColors.subYellow];
  static List<Color> lightSilver = [LMSColors.lightSilver, LMSColors.lightSilver];
  static List<Color> honeydew = [LMSColors.honeydew, LMSColors.honeydew];
  static List<Color> darkGreen = [LMSColors.darkGreen, LMSColors.darkGreen];
  static List<Color> secondGreen = [LMSColors.secondGreen, LMSColors.secondGreen];
  static List<Color> cyan = [LMSColors.cyan, LMSColors.cyan];
  static List<Color> smokyBlack = [LMSColors.smokyBlack, LMSColors.smokyBlack];
  static List<Color> palmLeaf = [LMSColors.palmLeaf, LMSColors.palmLeaf];
  static List<Color> black = [LMSColors.black, LMSColors.black];
  static List<Color> white = [LMSColors.white, LMSColors.white];
  static List<Color> dartmouthGreen = [LMSColors.dartmouthGreen, LMSColors.dartmouthGreen];
  static List<Color> apple = [LMSColors.apple, LMSColors.apple];
  static List<Color> cultured = [LMSColors.cultured, LMSColors.cultured];
  static List<Color> transparent = [LMSColors.transparent, LMSColors.transparent];
  static List<Color> smokyWhite = [LMSColors.smokyWhite, LMSColors.smokyWhite];
  static List<Color> chineseSilver = [LMSColors.chineseSilver, LMSColors.chineseSilver];
  static List<Color> antiFlashWhite = [LMSColors.antiFlashWhite, LMSColors.antiFlashWhite];
  static List<Color> chineseBlack = [LMSColors.chineseBlack, LMSColors.chineseBlack];
  static List<Color> wildSand = [LMSColors.wildSand, LMSColors.wildSand];
  static List<Color> alabaster = [LMSColors.alabaster, LMSColors.alabaster];
  static List<Color> orange = [LMSColors.orange, LMSColors.orange];

  static const headLineTextStyle = TextStyle(
      fontSize: 30,
      fontFamily: LMSFontFamily.sfCompactSemiBold,
      fontWeight: FontWeight.w700,
      height: 1.6,
      letterSpacing: 1.2,
      decoration: TextDecoration.none);

  static List<TextStyle> headline = [headLineTextStyle, headLineTextStyle];

  static const h1TextStyle = TextStyle(
      fontSize: 24,
      fontFamily: LMSFontFamily.sfCompactSemiBold,
      fontWeight: FontWeight.w700,
      height: 1.3,
      letterSpacing: 1.2,
      decoration: TextDecoration.none);

  static List<TextStyle> heading1 = [h1TextStyle, h1TextStyle];

  static const h2TextStyle = TextStyle(
      fontSize: 20,
      fontFamily: LMSFontFamily.sfCompactSemiBold,
      fontWeight: FontWeight.w700,
      height: 1.3,
      letterSpacing: 1.2,
      decoration: TextDecoration.none);

  static List<TextStyle> heading2 = [h2TextStyle, h2TextStyle];

  static const h3TextStyle = TextStyle(
      fontSize: 18,
      fontFamily: LMSFontFamily.sfCompactSemiBold,
      fontWeight: FontWeight.w700,
      height: 1.3,
      letterSpacing: 1.2,
      decoration: TextDecoration.none);

  static List<TextStyle> heading3 = [h3TextStyle, h3TextStyle];

  static const paragraphTextStyle = TextStyle(
      fontSize: 16,
      fontFamily: LMSFontFamily.sfCompactRegular,
      fontWeight: FontWeight.w500,
      height: 1.3,
      letterSpacing: 1.2,
      decoration: TextDecoration.none);

  static List<TextStyle> paragraph = [paragraphTextStyle, paragraphTextStyle];

  static const subTexTextStyle = TextStyle(
      fontSize: 14,
      fontFamily: LMSFontFamily.sfCompactRegular,
      fontWeight: FontWeight.w500,
      height: 1.3,
      letterSpacing: 1.2,
      decoration: TextDecoration.none);

  static List<TextStyle> subTex = [subTexTextStyle, subTexTextStyle];

  static const subTexMediumTextStyle = TextStyle(
      fontSize: 14,
      fontFamily: LMSFontFamily.sfCompactMedium,
      fontWeight: FontWeight.w600,
      height: 1.3,
      letterSpacing: 1.2,
      decoration: TextDecoration.none);

  static List<TextStyle> subTexMedium = [subTexMediumTextStyle, subTexMediumTextStyle];

  static const smallTexTextStyle = TextStyle(
      fontSize: 12,
      fontFamily: LMSFontFamily.sfCompactRegular,
      fontWeight: FontWeight.w500,
      height: 1.3,
      letterSpacing: 1.2,
      decoration: TextDecoration.none);

  static List<TextStyle> smallTex = [smallTexTextStyle, smallTexTextStyle];

  static const paragraphSemiBoldTextStyle = TextStyle(
      fontSize: 16,
      fontFamily: LMSFontFamily.sfCompactSemiBold,
      fontWeight: FontWeight.w700,
      height: 1.3,
      letterSpacing: 1.2,
      decoration: TextDecoration.none);

  static List<TextStyle> paragraphSemiBold = [
    paragraphSemiBoldTextStyle,
    paragraphSemiBoldTextStyle
  ];
}

class GradientExtension {
  late BuildContext? context;
  late ThemeExtensions? themeExtensions;

  static final GradientExtension _inst = GradientExtension._internal();

  GradientExtension._internal();

  factory GradientExtension(BuildContext context) {
    _inst.context = context;
    _inst.themeExtensions = context.themeExtensions;
    return _inst;
  }

  LinearGradient get headerGradient =>
      LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
        themeExtensions?.smokyBlack.withOpacity(0.8) ?? LMSColors.smokyBlack,
        themeExtensions?.palmLeaf.withOpacity(0.24) ?? LMSColors.palmLeaf
      ]);

  LinearGradient get enableButtonGradient => LinearGradient(
          begin: const Alignment(-0.92, 0.19),
          end: const Alignment(-0.19, -0.27),
          colors: [
            themeExtensions?.apple ?? LMSColors.apple,
            themeExtensions?.apple ?? LMSColors.apple,
            themeExtensions?.dartmouthGreen ?? LMSColors.apple,
            themeExtensions?.dartmouthGreen ?? LMSColors.apple
          ]);

  LinearGradient get disableButtonGradient => LinearGradient(colors: [
        themeExtensions?.textLightGrey ?? LMSColors.textLightGrey,
        themeExtensions?.textLightGrey ?? LMSColors.textLightGrey,
        themeExtensions?.textGrey ?? LMSColors.textGrey,
        themeExtensions?.textGrey ?? LMSColors.textGrey
      ]);
}
