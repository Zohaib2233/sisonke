import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sisonke/view/screen/auth/login_screen.dart';

import '../../../util/color_resources.dart';
import '../../../util/custom_themes.dart';
import 'alertButton.dart';

void showSOSDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24.0),
          child: Container(
            color: Colors.white,

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                },
                    child: Icon(Icons.cancel,color: ColorResources.RED,size: 43,)),

                Text(
                    'SOS',
                    style: manropeRegular.copyWith(
                        color: ColorResources.LIGHT_RED,
                        fontWeight: FontWeight.w700,
                        fontSize: 36
                    )
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(height: height*0.03),


                AlertButton(
                  text: "Police",
                ),
                AlertButton(
                  text: "Medical",
                ),
                AlertButton(
                  text: "Fire",
                ),
                AlertButton(
                  text: "Ping Circle",
                ),


              ],
            ),
          ),
        ),
      );
    },
  );
}



void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              color: Colors.white,

              child: Padding(
                padding: EdgeInsets.symmetric(vertical: height*0.02),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: width*0.25,
                      child: Center(
                        child: Text("Log out of your account?",
                        style: manropeRegular.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    TextButton(onPressed: (){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>
                          LoginScreen()), (route) => false);
                    }, child: Text("Log Out",
                        style: manropeRegular.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          color: ColorResources.DARK_RED
                        ))),
                    Divider(thickness: 2,),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Cancel",
                        style: manropeRegular.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          color: ColorResources.BLACK
                        )))


                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}