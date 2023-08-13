import 'package:flutter/material.dart';

import '../../../util/color_resources.dart';
import '../../../util/custom_themes.dart';

class DrawerTab extends StatelessWidget {
  const DrawerTab({
    super.key, required this.icon, required this.tabName, required this.onTap,
  });

  final IconData icon;
  final String tabName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon,color: ColorResources.BLACK,),
          SizedBox(
            width: 10,
          ),
          Text(tabName,
            style: manropeRegular.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),)
        ],

      ),

      onTap: onTap,
    );
  }
}