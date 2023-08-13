import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/custom_themes.dart';
import 'package:sisonke/view/baseWidgets/customAppBar/custom_appbar.dart';
import 'package:sisonke/view/screen/drawer/membership/saved_cards/saved_cards.dart';

import '../../../baseWidgets/button/custom_card_button.dart';

class ManageMembership extends StatefulWidget {
  const ManageMembership({Key? key}) : super(key: key);

  @override
  State<ManageMembership> createState() => _ManageMembershipState();
}

class _ManageMembershipState extends State<ManageMembership> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(
        title: "Membership",
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Total Cost = 30\$",style: manropeRegular.copyWith(
          fontSize: 24,fontWeight: FontWeight.w700,
        ),),
            SizedBox(
              width: double.infinity,
              child: Card(
                margin: EdgeInsets.only(top: height*0.03,left: width*0.05,right: width*0.05,bottom:height*0.06 ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                elevation: 25,
                child: Column(
                  children: [
                    SubscriptionCard(
                          subscriptionType: SubscriptionType.basic,),
                    SubscriptionCard(subscriptionType: SubscriptionType.essential),
                    SubscriptionCard(subscriptionType: SubscriptionType.premium),
                    SizedBox(
                      width: width,

                      // Sponsored User Card
                      child: Card(
                        margin: EdgeInsets.only(top:height*0.06 ,left: width*0.05,right: width*0.05),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Text("Sponsored Users",style: manropeRegular.copyWith(
                                fontSize: 20,fontWeight: FontWeight.w600
                              ),),
                              SizedBox(width: width*0.2,),
                              Text("5",style: manropeRegular.copyWith(
                                  fontSize: 20,fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Upgrade Button
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height*0.02,horizontal: width*0.2),
                      child: CustomCardButton(
                        title: "Upgrade Now",
                        color: ColorResources.LIGHT_BLUE,
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            SavedCardsScreen()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: height*0.03,
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
enum SubscriptionType{
  basic,
  essential,
  premium,



}

class SubscriptionCard extends StatelessWidget {

  SubscriptionCard({
    required this.subscriptionType
    });



  var subscriptionType;

  String? subscriptionName;
  String? subscriptionCharges;
  String? subscriptionPeriod;
  Color? color;


  @override
  Widget build(BuildContext context) {

    if(subscriptionType == SubscriptionType.basic){
        subscriptionName ="Basic";
        subscriptionCharges ="Free";
        subscriptionPeriod ="Total 7 Days";
        color = ColorResources.DARK_GREEN;
    }

    else if(subscriptionType == SubscriptionType.essential){
      subscriptionName ="Essential";
      subscriptionCharges ="10\$";
      subscriptionPeriod ="Total 30 Days";
      color = ColorResources.ORANGE;
    }

    else if(subscriptionType == SubscriptionType.premium){
      subscriptionName ="Premium";
      subscriptionCharges ="20\$";
      subscriptionPeriod ="1 Year";
      color = Colors.red;
    }

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return GestureDetector(
      child: Card(

        margin: EdgeInsets.only(top:height*0.06 ,left: width*0.05,right: width*0.05 ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)),
        elevation: 8,
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(subscriptionName!,style: manropeRegular.copyWith(
                    fontSize: 20,fontWeight: FontWeight.w600,
                  ),),
                  SizedBox(
                    height: 8,
                  ),
                  Text(subscriptionPeriod!,style: manropeRegular.copyWith(
                    fontSize: 14,fontWeight: FontWeight.w400,
                  )),
                  Text("Remaining",style: manropeRegular.copyWith(
                    fontSize: 14,fontWeight: FontWeight.w400,
                  )),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Icon(Icons.check_circle,color: color,
                  size: 32,),
                  SizedBox(
                    height: 8,
                  ),
                  Text(subscriptionCharges!,style: manropeRegular.copyWith(
                    fontSize: 16,fontWeight: FontWeight.w600,
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
