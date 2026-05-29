import 'package:flutter/material.dart';
import 'package:mukesh_mahaling/core/routes/pages.dart';

class BulletPoint extends StatelessWidget {
  final String text;
  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 18, height: 1.4)),
          Expanded(child: DescText(tittle: text,
          maxTextlines: 15,
          )),
        ],
      ),
    );
  }
}
