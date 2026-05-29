import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mukesh_mahaling/core/routes/pages.dart';

class BioText extends StatefulWidget {
  final String shortText;
  final String moreText;

  const BioText({super.key, required this.shortText, required this.moreText});

  @override
  State<BioText> createState() => _BioTextState();
}

class _BioTextState extends State<BioText> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    String displayText = expanded
        ? widget.shortText + widget.moreText
        : widget.shortText;

    return RichText(
      text: TextSpan(
        text: displayText,
        style: GoogleFonts.outfit(
          fontSize: AppTextSize.h3Textsize + 3,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF22262F),
        ),
        children: [
          TextSpan(
            text: expanded ? " Read less" : " ...Read more",
            style: GoogleFonts.outfit(
              fontSize: AppTextSize.h3Textsize + 3,
              fontWeight: FontWeight.w600,
              color:AppColor.primaryColor,
              
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                setState(() {
                  expanded = !expanded;
                });
              },
          ),
        ],
      ),
    );
  }
}
