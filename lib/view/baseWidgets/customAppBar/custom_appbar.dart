import 'package:flutter/material.dart';

import '../../../util/color_resources.dart';
import '../../../util/custom_themes.dart';
import '../button/back_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  final String title;



  @override
  Widget build(BuildContext context) {
    
    return AppBar(
        elevation: 0,
        backgroundColor: ColorResources.WHITE,
        centerTitle: true,
        leading: CustomBackButton(
          color: ColorResources.BLACK,
        ),
        title: Text(title,style: manropeRegular.copyWith(
            color: ColorResources.BLACK,
            fontSize: 20,
            fontWeight: FontWeight.w600
        ),),

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);



}
