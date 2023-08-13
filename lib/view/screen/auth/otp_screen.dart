import 'package:flutter/material.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/custom_themes.dart';
import 'package:sisonke/view/baseWidgets/button/back_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'package:sisonke/view/baseWidgets/button/custom_button.dart';
import 'package:sisonke/view/screen/dashboard/main_screen.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child:Scaffold(
          backgroundColor: ColorResources.WHITE,
          appBar: AppBar(

            elevation: 0,
            backgroundColor: ColorResources.WHITE,
            leading: CustomBackButton(
              color: ColorResources.BLACK,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Welcome ",style: manropeRegular.copyWith(
                        fontSize: 24,
                          fontWeight: FontWeight.w600,
                        color: ColorResources.GREEN
                      ),),
                      Text("To ",
                        style: manropeRegular.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: ColorResources.ORANGE)),
                      Text("Sisonke",
                        style: manropeRegular.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: ColorResources.LIGHT_RED)),
                    ],
                  ),
                  SizedBox(
                    height: height*0.3
                  ),
                  Text("Enter the OTP Verification Code",
                  style: manropeRegular.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: OTPTextField(
                      length: 5,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth:40,
                      style: TextStyle(
                          fontSize: 17
                      ),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                      },
                    ),
                  ),
                  SizedBox(
                    height: height*0.1,
                  ),
                  CustomButton(buttonText: "Proceed",
                  textColor: ColorResources.WHITE,
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
                    BottomNavigation()));
                  },)
                ],
              ),
            ),
          ),
        ) );
  }
}
