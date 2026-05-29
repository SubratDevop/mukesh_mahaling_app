// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//* Text Sizes
class AppTextSize {
  static double h1Textsize = 11.0;
  static double submitButtonTextsize = 14.0;
  static double h2Textsize = 13.0;
  static double h3Textsize = 11.0;
  static double h4Textsize = 9.0;
}
//* APP Custom TextWidgets

//~ H1Text
class H1Text extends StatelessWidget {
  H1Text(
      {super.key,
      required this.tittle,
      this.alignnment,
      this.maxTextlines,
      this.tittleColor,
      this.textWeight,
      this.textOverflow,
      this.letterSpace,
      this.textSize});

  String tittle;
  Color? tittleColor;
  int? maxTextlines;
  TextAlign? alignnment;
  double? textSize;
  FontWeight? textWeight;
  TextOverflow? textOverflow;
  double? letterSpace;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      maxLines: maxTextlines,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      textAlign: alignnment ?? TextAlign.start,
      style: GoogleFonts.outfit(
        letterSpacing: letterSpace ?? 0.0,
        fontSize: textSize ?? AppTextSize.h1Textsize,
        fontWeight: textWeight ?? FontWeight.w700,
        color: tittleColor ?? const Color(0xFF22262F),
      ),
    );
  }
}

//~ H2Text
class H2Text extends StatelessWidget {
  H2Text(
      {super.key,
      required this.tittle,
      this.alignnment,
      this.maxTextlines,
      this.tittleColor,
      this.textWeight,
      this.textOverflow,
      this.letterSpace,
      this.textSize});

  String tittle;
  Color? tittleColor;
  int? maxTextlines;
  TextAlign? alignnment;
  double? textSize;
  FontWeight? textWeight;
  TextOverflow? textOverflow;
   double? letterSpace;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      maxLines: maxTextlines,
      
      overflow: textOverflow ?? TextOverflow.ellipsis,
      textAlign: alignnment ?? TextAlign.start,
      style: GoogleFonts.outfit(
        letterSpacing: letterSpace ?? 0.0,
        fontSize: textSize ?? AppTextSize.h2Textsize,
        fontWeight: textWeight ?? FontWeight.normal,
        color: tittleColor ?? const Color(0xFF22262F),
      ),
    );
  }
}

//~ H2Text
class H3Text extends StatelessWidget {
  H3Text(
      {super.key,
      required this.tittle,
      this.alignnment,
      this.maxTextlines,
      this.tittleColor,
      this.textWeight,
      this.textOverflow,
      this.letterSpace,
      this.textSize});

  String tittle;
  Color? tittleColor;
  int? maxTextlines;
  TextAlign? alignnment;
  double? textSize;
  FontWeight? textWeight;
  TextOverflow? textOverflow;
  double? letterSpace;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      maxLines: maxTextlines,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      textAlign: alignnment ?? TextAlign.start,
      style: GoogleFonts.outfit(
        letterSpacing: letterSpace ?? 0.0,
       
        fontSize: textSize ?? AppTextSize.h3Textsize,
        fontWeight: textWeight ?? FontWeight.w400,
        color: tittleColor ?? const Color(0xFF22262F),
      ),
    );
  }
}

//~ Description Text
class DescText extends StatelessWidget {
  DescText(
      {super.key,
      required this.tittle,
      this.alignnment,
      this.maxTextlines,
      this.tittleColor,
      this.textWeight,
      this.textOverflow,
      this.letterSpace,
      this.textSize});

  String tittle;
  Color? tittleColor;
  int? maxTextlines;
  TextAlign? alignnment;
  double? textSize;
  FontWeight? textWeight;
  TextOverflow? textOverflow;
  double? letterSpace;

  @override
  Widget build(BuildContext context) {
    return Text(
      tittle,
      maxLines: maxTextlines,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      textAlign: alignnment ?? TextAlign.start,
      style: GoogleFonts.outfit(
               fontSize: textSize ?? AppTextSize.h3Textsize + 3,
        fontWeight: textWeight ?? FontWeight.w400,
        color: tittleColor ?? const Color(0xFF22262F),
      ),
    );
  }
}

