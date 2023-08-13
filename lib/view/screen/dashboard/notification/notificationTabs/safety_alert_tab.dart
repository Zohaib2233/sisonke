import 'package:flutter/material.dart';
import 'package:sisonke/view/baseWidgets/customCards/notification_card.dart';
import '../../../../../localization/language_constrants.dart';

class SafetyAlertTab extends StatelessWidget {
  SafetyAlertTab({Key? key}) : super(key: key);

  List<String> safetyAlerts=[

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: NotificationCard(
          notificationsList: safetyAlerts,
          heading: getTranslated("SAFETY_ALERTS", context),
        )
      ),
    );
  }
}
