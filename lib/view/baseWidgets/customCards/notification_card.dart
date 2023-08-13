import 'package:flutter/material.dart';

import '../../../util/custom_themes.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.notificationsList,
    required this.heading,
  });


  final List<String> notificationsList;
  final String heading;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.only(
          right: width*0.08,left: width*0.08,
          top: height*0.08,bottom: height*0.08
      ),
      elevation: 10,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(heading,style: manropeRegular.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline
          ),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*0.08,vertical: height*0.05),
            child: notificationsList.length>0?ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: notificationsList.length,
              itemBuilder: (BuildContext context, int index){
                return Text("• ${notificationsList[index]}",
                  style: manropeRegular.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),);
              },
            ):
            Text("No Result Found"),
          ),
        ],
      ),);}}