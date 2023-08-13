import 'package:flutter/material.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/view/baseWidgets/alertDialog/alert_dialog.dart';
import 'package:sisonke/view/baseWidgets/button/back_button.dart';
import 'package:sisonke/view/screen/drawer/savedPlaces/saved_places.dart';
import 'package:sisonke/view/screen/drawer/settings/settings.dart';

import '../../../localization/language_constrants.dart';
import '../../baseWidgets/drawer/drawer_tabs.dart';
import 'membership/manage_membership.dart';
import 'membership/membership.dart';
import 'profile/profile_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  @override
  void dispose() {
    print("close");
    Navigator.pop(context);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(

        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24.0),
          ),
          child: Drawer(


            backgroundColor: ColorResources.WHITE,

            width: 260,
            child: ListView(
              children: [
               Padding(
                 padding: EdgeInsets.only(
                   right: width*0.5,
                   top: 20,
                   bottom: 26
                 ),
                 child: CustomBackButton(color: ColorResources.BLACK),
               ),
              DrawerTab(icon: Icons.account_circle,
                  tabName: getTranslated("MY_PROFILE", context),
                  onTap: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>
                        MyProfile()));
              }),
                DrawerTab(icon: Icons.settings_rounded,
                    tabName: getTranslated("SETTINGS", context),
                    onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          Settings()));
                    }),
                DrawerTab(icon: Icons.room,
                    tabName: getTranslated("SAVED_PLACES", context),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          SavedPlaces()));

                    }),
                DrawerTab(icon: Icons.card_membership,
                    tabName: getTranslated("MEMBERSHIP", context),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          Membership()));

                    }),
                DrawerTab(icon: Icons.subscriptions,
                    tabName: getTranslated("MANAGE_MEMBERSHIPS", context),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          ManageMembership()));
                    }),
                DrawerTab(icon: Icons.logout,
                    tabName: getTranslated("LOG_OUT", context),
                    onTap: (){
                          showLogoutDialog(context);
                    }),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


