import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../util/color_resources.dart';
import '../../../util/custom_themes.dart';

class SettingsButton extends StatelessWidget {
  SettingsButton({
    super.key,
    this.isSwitch=false,
    this.switchValue=false,
    required this.text,
    this.iconTap,
    this.switchTap,

  });

  final bool isSwitch;
  final String text;
  final switchValue;
  final void Function()? iconTap;
  final void Function(bool)? switchTap;


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15),

        child:Row(
            children:[Text(text,style: manropeRegular.copyWith(
                color: ColorResources.BLACK,
                fontWeight: FontWeight.w600,
                fontSize: 17
            ),),
              Spacer(),
              isSwitch?FlutterSwitch(value: switchValue, onToggle: switchTap!
              ):GestureDetector(
                child: Icon(Icons.arrow_forward_ios,
                  size: 22,color: ColorResources.HINT_TEXT_COLOR,),
                onTap: iconTap,
              ),
            ]));
  }
}