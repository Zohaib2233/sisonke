import 'package:flutter/material.dart';
import 'package:sisonke/view/baseWidgets/customCards/notification_card.dart';

import '../../../../../localization/language_constrants.dart';

class CheckupLogsTab extends StatelessWidget {
  CheckupLogsTab({Key? key}) : super(key: key);

  List<String> checkupLogs =[
    "Jagz cheked in 10 minute ago",
    "Hassna did not checkin last 1 hour",
    "Keshav Checked In 1 hour ago",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: NotificationCard(
          notificationsList: checkupLogs,
          heading: getTranslated("CHECKUP_LOG", context),
        )
      ),
    );
  }
}
