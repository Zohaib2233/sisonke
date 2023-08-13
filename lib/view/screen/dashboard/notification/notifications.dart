import 'package:flutter/material.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/custom_themes.dart';
import '../../../baseWidgets/tabBar/custom_tabBar.dart';
import '../../drawer/drawer.dart';
import 'notificationTabs/checkup_tab.dart';
import 'notificationTabs/location_tab.dart';
import 'notificationTabs/safety_alert_tab.dart';
import 'notificationTabs/sos_tab.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> with TickerProviderStateMixin {

  int? colorSelect;
  TabController? tabController;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  DefaultTabController(

        length: 4,
        child: Scaffold(

          drawer: CustomDrawer(),
          appBar: AppBar(

            centerTitle: true,
            title: Text("Notification",style: manropeRegular.copyWith(
              color: ColorResources.BLACK,
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
                size: 40,
                color: ColorResources.BLACK
            ),
            bottom: CustomTabBar(tabController: tabController,),
          ),
          body: TabBarView(
            controller: tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              SosTab(),
              CheckupLogsTab(),
              LocationTab(),
              SafetyAlertTab()
            ],
          ),
    ),);
  }
}



