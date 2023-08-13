import 'package:flutter/material.dart';
import 'package:sisonke/view/baseWidgets/customCards/notification_card.dart';

import '../../../../../localization/language_constrants.dart';

class LocationTab extends StatelessWidget {
  LocationTab({Key? key}) : super(key: key);

  List<String> locationLogs=[
    "Hassan is leaving school",
    "Keshav is leaving Mall",
    "Jagz is leaving Mall",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: NotificationCard(
          notificationsList: locationLogs,
          heading: getTranslated("LOCATION_LOG", context),
        )
      ),
    );
  }
}
