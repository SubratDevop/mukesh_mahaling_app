import 'package:flutter/material.dart';
import 'package:mukesh_mahaling/core/resources/font_size.dart';

class ViewAllBtn extends StatelessWidget {
  
  final VoidCallback? onTap;
  final TextStyle? style;

  const ViewAllBtn({super.key,this.onTap, this.style});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        "View All",
        style:
            style ??
            TextStyle(
              fontSize: FontSize.caption(context),
              decoration: TextDecoration.underline,
              decorationColor: Colors.deepOrange,
              decorationThickness: 2,
              color: Colors.deepOrange,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
