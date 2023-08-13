import 'package:flutter/material.dart';
import '../../../../../localization/language_constrants.dart';
import '../../../../baseWidgets/customCards/notification_card.dart';

class SosTab extends StatelessWidget {
  SosTab({Key? key}) : super(key: key);



  List<String> sosList = [
    ("Jagz requested fire service"),
    ("Hassan Ping"),
   ("Any service required"),
    ("New Notification"),
  ];
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: NotificationCard(notificationsList: sosList,
      heading: getTranslated("SOS", context),),
    );
  }
}

