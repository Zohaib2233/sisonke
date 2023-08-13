import 'package:flutter/material.dart';

import '../../../../util/color_resources.dart';
import '../../../../util/custom_themes.dart';


class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key, required this.text, this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    print(width);
    return Padding(
      padding: EdgeInsets.only(left: width*0.08,right: width*0.08,top: height*0.05),
      child: ListTile(
        onTap: onTap,
        tileColor: ColorResources.PROFILE_BUTTON,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24)
        ),
        title: Text(text,
          style: manropeRegular.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),),

      ),
    );
  }
}