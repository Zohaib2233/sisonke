import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/color_resources.dart';
import '../../../util/custom_themes.dart';

class SavedPlacesCard extends StatelessWidget {
  SavedPlacesCard({
    super.key, required this.locationName, required this.locationAddress,
    required this.image, this.buttonPressed,
  });

  final String locationName;
  final String locationAddress;
  final String image;
  final void Function()? buttonPressed;


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 80,
        child: Material(
          color: ColorResources.WHITE,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [

                Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorResources.RED
                    ),
                    child: SvgPicture.asset(image)),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(locationName,style:manropeRegular.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                    Text(locationAddress,style:manropeRegular.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ))
                  ],
                ),
                Spacer(),

                GestureDetector(
                  onTap: buttonPressed,
                  child: Container(

                    decoration: BoxDecoration(
                      color: ColorResources.LIGHT_RED,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 20,
                    width: 80,
                    child: Center(
                      child: Text("View Location",style: manropeRegular.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: ColorResources.WHITE
                      ),),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}