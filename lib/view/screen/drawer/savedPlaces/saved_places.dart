import 'package:flutter/material.dart';
import 'package:sisonke/util/custom_themes.dart';
import 'package:sisonke/util/images.dart';

import '../../../../util/color_resources.dart';
import '../../../baseWidgets/button/custom_card_button.dart';
import '../../../baseWidgets/customAppBar/custom_appbar.dart';
import '../../../baseWidgets/customCards/saved_places_card.dart';

class SavedPlaces extends StatefulWidget {
  const SavedPlaces({Key? key}) : super(key: key);

  @override
  State<SavedPlaces> createState() => _SavedPlacesState();
}



class _SavedPlacesState extends State<SavedPlaces> {
  List<Widget> savedPlacesList =[
    SavedPlacesCard(locationAddress: "Location Address", locationName: "Location Name",
    image: Images.location_img,buttonPressed: (){

      },),
    SavedPlacesCard(locationAddress: "Location Address", locationName: "Location Name",
    image: Images.location_img,),



  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:ColorResources.WHITE,
      appBar: CustomAppBar(title: "Saved Places",),
      body: Card(
        margin: EdgeInsets.only(top: height*0.06,left: width*0.05,right: width*0.05,bottom:height*0.06 ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)),
        elevation: 25,
        child: SingleChildScrollView(
          child: Column(
            children:[savedPlacesList.length>0? ListView.builder(
              shrinkWrap: true,
              itemCount: savedPlacesList.length,
              itemBuilder: (BuildContext context, int index){
            return savedPlacesList[index];

          }):Text("No Data to Display"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height*0.08 ,horizontal: width*0.2),
                child: CustomCardButton(title: "Add Places",
                color: ColorResources.LIGHT_BLUE,
                onTap: (){

                },),
              )
      ]),
        )),
    );
  }
}




