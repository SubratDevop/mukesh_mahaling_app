// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mukesh_mahaling/core/resources/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  double? height = 100;
  Color? appbarBGColor = AppColor.splashCsreenColor;

  CustomAppBar({super.key, required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height!);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: appbarBGColor,
      alignment: Alignment.center,
      child: child,
    );
  }
}
