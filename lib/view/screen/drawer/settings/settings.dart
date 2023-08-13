import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/images.dart';


import '../../../../util/custom_themes.dart';
import '../../../baseWidgets/customAppBar/custom_appbar.dart';
import '../../../baseWidgets/customButtons/settings_button.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.WHITE,
      appBar: CustomAppBar(title: 'Settings',),
      body: Card(
        margin: EdgeInsets.only(top: 50,left: 8,right: 8),
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(15),
          topLeft: Radius.circular(15))
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:AssetImage(Images.snk_logo),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Yennefer Doe",
                  style: manropeRegular.copyWith(
                    color: ColorResources.BLACK,
                    fontWeight: FontWeight.w600,
                    fontSize: 17
                  ),)
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Text("Account Settings",style: manropeRegular.copyWith(
                color: ColorResources.HINT_TEXT_COLOR
              ),),
              SizedBox(
                height: 15,
              ),

              SettingsButton(text: "Edit Profile",),
              SettingsButton(text: "Change Password",),
              SettingsButton(text: "Push notifications", isSwitch: true,
                switchValue: _switchValue,switchTap: (value){
                setState(() {
                  _switchValue=value;
                });
                },
              )
            ],
          ),
        ),

      ),
    );
  }
}


