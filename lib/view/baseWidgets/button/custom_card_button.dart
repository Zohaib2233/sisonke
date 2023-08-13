import 'package:flutter/material.dart';

import '../../../util/color_resources.dart';
import '../../../util/custom_themes.dart';

class CustomCardButton extends StatelessWidget {
  const CustomCardButton({
    super.key, required this.onTap, required this.title, required this.color,
  });


  final void Function() onTap;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: onTap,
        child: Text(title,style: manropeRegular.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 16
        ),),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            backgroundColor: color,
            padding: EdgeInsets.symmetric(vertical: 12)
        ),

      ),
    );
  }
}