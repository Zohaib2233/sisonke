import 'package:flutter/material.dart';
import 'package:sisonke/localization/language_constrants.dart';

import '../../../util/app_constant.dart';
import '../../../util/color_resources.dart';
import '../../../util/custom_themes.dart';

class CustomTabBar extends StatefulWidget  implements PreferredSizeWidget{
  TabController? tabController;
  CustomTabBar({Key? key,
  required this.tabController}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int? colorSelect;


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return TabBar(
      controller: widget.tabController,
      isScrollable: true,
      indicatorPadding: EdgeInsets.zero,
      indicatorColor: Colors.transparent,
      labelColor: ColorResources.BLACK,
      labelStyle: manropeRegular.copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w500
      ),
      onTap: (value){
        setState(() {
          colorSelect = value;
        });
      },


      tabs: [

        Tab(
          height: height*AppConstants.TAB_HEIGHT,
          icon:
          CustomCircleAvatar(colorSelect: colorSelect,icon:Icons.alarm,
            tabNo: 0,),
          text: getTranslated("SOS", context),),
        Tab(
          height:height*AppConstants.TAB_HEIGHT,
          icon:
          CustomCircleAvatar(colorSelect: colorSelect,
            icon: Icons.check_circle,
            tabNo: 1,),
          text: getTranslated("CHECKUP_LOG", context),),
        Tab(
          height:height*AppConstants.TAB_HEIGHT,
          icon:
          CustomCircleAvatar(colorSelect: colorSelect,
            icon: Icons.location_on,
            tabNo: 2,),
          text: getTranslated("LOCATION_LOG", context),),
        Tab(
          height:height*AppConstants.TAB_HEIGHT,
          icon:
          CustomCircleAvatar(colorSelect: colorSelect,
            icon: Icons.privacy_tip,tabNo: 3,),
          text: getTranslated("SAFETY_ALERTS", context),),



      ],

    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.colorSelect,
    required this.icon,
    required this.tabNo,
  });

  final int? colorSelect;
  final IconData icon;
  final int tabNo;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(child: Icon(icon,
      size: 33,color: ColorResources.BLACK,),
      radius: 25,
      backgroundColor: colorSelect==tabNo? ColorResources.GREEN:
      ColorResources.LIGHT_YELLOW,);
  }
}
