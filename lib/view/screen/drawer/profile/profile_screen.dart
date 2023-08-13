import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sisonke/localization/language_constrants.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/custom_themes.dart';
import 'package:sisonke/util/images.dart';
import 'package:sisonke/view/baseWidgets/button/back_button.dart';

import '../../../baseWidgets/customAppBar/custom_appbar.dart';
import '../../../baseWidgets/customButtons/profileButton/profile_button.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:ColorResources.WHITE ,
      appBar: CustomAppBar(title: getTranslated("PROFILE", context),),
      body: Column(
        children: [
          SizedBox(
            height: 22,
          ),
          CircleAvatar(
            radius: width*0.15,
            backgroundImage: AssetImage(Images.snk_logo),
          ),
          ProfileButton(text: getTranslated("PRIVACY", context),),
          ProfileButton(text: getTranslated("EDIT_PROFILE", context),),
          ProfileButton(text: getTranslated("SETTINGS", context),),
          ProfileButton(text: getTranslated("LOG_OUT", context),),
        ],

      ),
    );
  }
}


