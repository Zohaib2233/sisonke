import 'package:flutter/material.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/custom_themes.dart';
import 'package:sisonke/view/baseWidgets/button/custom_card_button.dart';
import 'package:sisonke/view/baseWidgets/customAppBar/custom_appbar.dart';

import '../../../baseWidgets/textfield/custom_textfield.dart';

class Membership extends StatefulWidget {
  const Membership({Key? key}) : super(key: key);

  @override
  State<Membership> createState() => _MembershipState();
}

class _MembershipState extends State<Membership> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: ColorResources.WHITE,
        appBar: CustomAppBar(
          title: "Membership",
        ),
        body: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.only(
                top: height * 0.03,
                left: width * 0.08,
                right: width * 0.08,
                bottom: height * 0.06),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                      color: ColorResources.LIGHT_BLUE,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Center(
                    child: Text("Payment Procedure",
                        style: manropeRegular.copyWith(
                            color: ColorResources.WHITE,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                        textAlign: TextAlign.center),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cardholder Name",style: manropeRegular.copyWith(
                        fontSize: 14
                      ),),
                      CustomTextField(
                        hintText: "XYZ Name",
                        fillColor: ColorResources.WHITE,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Credit Card Number",style: manropeRegular.copyWith(
                          fontSize: 14
                      )),
                      CustomTextField(
                        hintText: "Number",
                        fillColor: ColorResources.WHITE,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Expiration Date",style: manropeRegular.copyWith(
                                    fontSize: 14)),
                                CustomTextField(
                                  hintText: "05/26/23",
                                  fillColor: ColorResources.WHITE,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.1,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("CVV Code",style: manropeRegular.copyWith(
                                    fontSize: 14
                                )),
                                CustomTextField(
                                  hintText: "5789",
                                  fillColor: ColorResources.WHITE,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Bottom of Card

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.04),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("Essential Payment",style: manropeRegular.copyWith(
                                    fontSize: 14
                                )),
                                Spacer(),
                                Text("20\$",style: manropeRegular.copyWith(
                                    fontSize: 14
                                )),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text("Extra Payment",style: manropeRegular.copyWith(
                                    fontSize: 14
                                )),
                                Spacer(),
                                Text("20\$",style: manropeRegular.copyWith(
                                    fontSize: 14
                                )),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text("Total"),
                                Spacer(),
                                Text("40\$",style: manropeRegular.copyWith(
                                    fontSize: 14
                                )),
                              ],
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width*0.08),
                        child: CustomCardButton(onTap: (){

                        }, title: "Make Payment",
                        color: ColorResources.LIGHT_RED),

                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
