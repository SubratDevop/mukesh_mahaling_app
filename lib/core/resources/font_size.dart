import 'package:flutter/material.dart';

class AppTypography {
  static double scale(BuildContext context, double fontSize) {
    final mediaQuery = MediaQuery.of(context);

    final shortestSide = mediaQuery.size.shortestSide;
    final textScale = mediaQuery.textScaler.scale(1);

    // Design reference device
    const designShortestSide = 390.0;

    double scaleFactor = shortestSide / designShortestSide;

    // Prevent over scaling
    scaleFactor = scaleFactor.clamp(0.85, 1.20);

    return (fontSize * scaleFactor) / textScale;
  }
}

//////////////////////////////!     FONT SIZE    ///////////////////////////////////

//* Recommended Usage
// Component	Size
// Caption / Secondary Info	12
// Label	13
// Form Field Text	14-16
// Body Text	16
// Button Text	15
// Tab Text	15
// Card Title	18
// Section Title	20
// App Bar / Page Title	24
// Main Heading	28
// Hero Banner Title	32

//* Real-World Example
// // AppBar Title
// fontSize: FontSize.pageTitle(context)

// // Description
// fontSize: FontSize.body(context)

// // Button
// fontSize: FontSize.button(context)

// // Bottom Navigation
// fontSize: FontSize.label(context)

// // Caption
// fontSize: FontSize.caption(context)

// // Section Heading
// fontSize: FontSize.sectionTitle(context)

//!!!!

//*  Recommendation for 90% Flutter Apps

//& Caption      : 12
//& Label        : 13
//& Body         : 16
//& Button       : 15
//& Card Title   : 18
//& Page Title   : 24
//& Screen Heading      : 28

class FontSize {
  ///^ Secondary Info / Captions
  static double caption(BuildContext context) =>
      AppTypography.scale(context, 12);

  ///^ Small Labels
  static double label(BuildContext context) => AppTypography.scale(context, 13);

  ///^ Primary Body Text (Recommended Readability)
  static double body(BuildContext context) => AppTypography.scale(context, 16);

  ///^ Body Text Large
  static double bodyLarge(BuildContext context) =>
      AppTypography.scale(context, 18);

  ///^ Interactive Elements (Buttons, Tabs)
  static double button(BuildContext context) =>
      AppTypography.scale(context, 15);

  ///^ Card Title   : 18
  static double cardTitle(BuildContext context) =>
      AppTypography.scale(context, 16);

  ///^ Card SubTitle   : 14
  static double cardSubTitle(BuildContext context) =>
      AppTypography.scale(context, 14);


  ///^ Header / Page Titles
  static double pageTitle(BuildContext context) =>
      AppTypography.scale(context, 24);

  ///^ Large Screen Heading
  static double screenHeading(BuildContext context) =>
      AppTypography.scale(context, 26);  //28

  ///^ Hero Heading (Rare Usage)
  static double display(BuildContext context) =>
      AppTypography.scale(context, 32);
}
