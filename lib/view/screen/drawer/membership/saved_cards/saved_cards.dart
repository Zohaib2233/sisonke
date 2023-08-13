import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sisonke/util/images.dart';
import 'package:sisonke/view/baseWidgets/button/custom_card_button.dart';
import 'package:sisonke/view/baseWidgets/customAppBar/custom_appbar.dart';

import '../../../../../util/color_resources.dart';
import '../../../../../util/custom_themes.dart';

class SavedCardsScreen extends StatefulWidget {
  const SavedCardsScreen({Key? key}) : super(key: key);

  @override
  State<SavedCardsScreen> createState() => _SavedCardsScreenState();
}

class _SavedCardsScreenState extends State<SavedCardsScreen> {

  List<Widget> savedCardsList =[
    CustomSavedCard(
      cardHolderName: "Card Holder Name",
      cardNumber: "0000-XXXX-8888-99",
    ),
    CustomSavedCard(
      cardHolderName: "Card Holder Name",
      cardNumber: "0000-XXXX-8888-99",
    ),
    CustomSavedCard(
      cardHolderName: "Card Holder Name",
      cardNumber: "0000-XXXX-8888-99",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorResources.WHITE,
      appBar: CustomAppBar(title: "Membership",),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
            margin: EdgeInsets.only(top: height*0.06,left: width*0.05,right: width*0.05,bottom:height*0.06 ),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8)),
    elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: height*0.05),
                    child: Text("Saved Cards",style: manropeRegular.copyWith(
                      fontSize: 20,fontWeight: FontWeight.w600
                    ),),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: savedCardsList.length,
                      itemBuilder: (BuildContext context, int index){
                        return savedCardsList[index];

                      })

                ],
              ),
    ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.3),
              child: CustomCardButton(onTap: (){}, title: "Add New Card", color: ColorResources.LIGHT_RED),
            )
          ],
        ),
      ));
  }
}

class CustomSavedCard extends StatelessWidget {
  const CustomSavedCard({
    super.key, required this.cardHolderName, required this.cardNumber,
  });

  final String cardHolderName;
  final String cardNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       child: Padding(
          padding: EdgeInsets.only(left: 15,bottom: 30),
          child: Row(
            children: [

              Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorResources.RED
                  ),
                  child: SvgPicture.asset(Images.location_img)),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cardHolderName,style:manropeRegular.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),),
                  Text(cardNumber,style:manropeRegular.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ))
                ],
              ),

            ],
          ),
        )
    );
  }
}
