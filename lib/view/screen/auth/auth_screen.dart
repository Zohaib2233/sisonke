import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sisonke/localization/language_constrants.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/dimensions.dart';
import 'package:sisonke/util/images.dart';
import 'package:sisonke/view/baseWidgets/button/custom_button.dart';
import 'package:sisonke/view/screen/auth/account_type_screen.dart';
import 'package:sisonke/view/screen/auth/login_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

void _onTapLogin(BuildContext context) {
  Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
}

void _onTapCreateAccount(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => ChooseAccountTypeScreen()));
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(Images.splash_logo),
            fit: BoxFit.cover,
          )),
          child: Stack(
            children: [


              Positioned(
                  top: 0,
                  left: width * 0.1,
                  right: width * 0.1,
                  child: Image.asset(
                    Images.splash_logo,

                  )),
              Positioned(
                  bottom: 30,
                  left: width * 0.1,
                  right: width * 0.1,
                  child: Column(
                    children: [
                      Container(
                        child: CustomButton(
                          buttonText: "Register",
                          onTap: () {},
                          buttonColor: ColorResources.getPrimary(context),
                          textColor:ColorResources.WHITE,
                        ),
                        width: width*0.5,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: width*0.5,
                        child: CustomButton(
                          buttonText: "Login",
                          onTap: () {},
                          buttonColor: ColorResources.WHITE,
                          textColor: Color(0xFF42BEA5),
                        ),
                      )
                    ],
                  )),

            ],
          )),
    );
  }
}
