import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/images.dart';
import 'package:sisonke/view/baseWidgets/button/back_button.dart';
import 'package:sisonke/view/baseWidgets/button/custom_button.dart';
import 'package:sisonke/view/baseWidgets/textfield/custom_password_textfield.dart';
import 'package:sisonke/view/baseWidgets/textfield/custom_textfield.dart';
import 'package:sisonke/view/screen/auth/login_screen.dart';
import 'package:sisonke/view/screen/auth/otp_screen.dart';

import '../../../localization/language_constrants.dart';
import '../../../provider/auth_provider.dart';
import '../../../util/custom_themes.dart';
import '../../baseWidgets/checkbox/custom_checkbox.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorResources.WHITE,
          leading: CustomBackButton(
            color: ColorResources.BLACK,
          ),
        ),
          backgroundColor: ColorResources.WHITE,
          body: SingleChildScrollView(

            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image(image: AssetImage(Images.snk_logo),
                    height: height*0.2,)),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(getTranslated("REGISTER_WELCOME", context),
                      style: manropeRegular.copyWith(fontSize: 25,
                      fontWeight: FontWeight.w600)),
                  Text(getTranslated("REGISTER_TAGLINE", context),
                      style: manropeRegular.copyWith(fontSize: 14,
                        color: ColorResources.SILVER_GREY,
                      )),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(getTranslated("USERNAME", context),style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  CustomTextField(
                    fillColor: Colors.white,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(getTranslated("CONTACT", context),style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  CustomTextField(
                    fillColor: Colors.white,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(getTranslated("PASSWORD", context),style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  CustomPasswordTextField(
                    fillColor: ColorResources.WHITE,

                  ),
                  SizedBox(
                    height: height*0.07,
                  ),
                  CustomButton(buttonText: getTranslated("SIGNUP", context),textColor: Colors.white,
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                            OtpScreen()));
                        print(Provider.of<AuthProvider>(context,listen: false).isChecked);
                      }),
                  SizedBox(
                    height: height*0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height*0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(getTranslated("ALREADY_ACCOUNT", context),
                          style: robotoRegular.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ColorResources.SILVER_GREY,
                          ),),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                LoginScreen()));
                          },
                          child: Text(getTranslated("LOGIN", context),
                              style: robotoRegular.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ColorResources.DARK_BLUE,
                              )),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
