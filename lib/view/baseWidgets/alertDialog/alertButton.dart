import 'package:flutter/material.dart';

import '../../../util/color_resources.dart';
import '../../../util/custom_themes.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({Key? key,
    required this.text, this.onTap}) : super(key: key);

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return TextButton(
        onPressed: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.22,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,style: manropeRegular.copyWith(
                  color: ColorResources.BLACK,
                  fontSize: 24,
                  fontWeight: FontWeight.w600
              ),),
              Divider(thickness: 2,
              ),
            ],
          ),
        ),
        style: TextButton.styleFrom(
            foregroundColor: MaterialStateColor.resolveWith((states) {
              if(states.contains(MaterialState.hovered)){
                return ColorResources.LIGHT_RED;
              }
              return ColorResources.BLACK;
            }
            ),
          padding: EdgeInsets.only(bottom: height*0.07),

        ));
  }
}
