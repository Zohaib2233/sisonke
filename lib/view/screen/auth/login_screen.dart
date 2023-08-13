import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sisonke/provider/auth_provider.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/custom_themes.dart';
import 'package:sisonke/util/images.dart';
import 'package:sisonke/view/baseWidgets/button/custom_button.dart';
import 'package:sisonke/view/baseWidgets/textfield/custom_textfield.dart';

import 'package:sisonke/view/baseWidgets/textfield/custom_password_textfield.dart';
import 'package:sisonke/view/screen/auth/register_screen.dart';

import '../../../localization/language_constrants.dart';
import '../../baseWidgets/checkbox/custom_checkbox.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorResources.WHITE,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Image(
                    image: AssetImage(Images.snk_logo),

                    height: height * 0.3,
                  )),
                  Text(getTranslated("LOGIN_WELCOME", context),
                      style: manropeRegular.copyWith(
                          fontSize: 25, fontWeight: FontWeight.w600)),
                  Text(getTranslated("LOGIN_TAGLINE", context),
                      style: manropeRegular.copyWith(
                        fontSize: 14,
                        color: ColorResources.SILVER_GREY,
                      )),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      getTranslated("CONTACT", context),
                      style: robotoRegular.copyWith(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CustomTextField(
                    fillColor: Colors.white,
                    isPhoneNumber: true,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      getTranslated("PASSWORD", context),
                      style: robotoRegular.copyWith(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  CustomPasswordTextField(
                    fillColor: ColorResources.RED,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        CustomCheckbox(),
                        Text(
                          getTranslated("REMEMBER_ME", context),
                          style: robotoRegular.copyWith(
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        GestureDetector(
                          child: Text(
                            getTranslated("FORGET_PASSWORD", context),
                            style: robotoRegular.copyWith(
                                color: ColorResources.RED,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.07,
                  ),
                  CustomButton(
                      buttonText: getTranslated("LOGIN", context),
                      textColor: Colors.white,
                      onTap: () {
                        print(Provider.of<AuthProvider>(context, listen: false)
                            .isChecked);
                      }),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        getTranslated("DONT_ACCOUNT", context),
                        style: robotoRegular.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorResources.SILVER_GREY,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        child: Text(getTranslated("SIGNUP", context),
                            style: robotoRegular.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorResources.DARK_BLUE,
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
