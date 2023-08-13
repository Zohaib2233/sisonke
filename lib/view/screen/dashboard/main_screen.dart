import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/color_resources.dart';
import '../../../util/images.dart';

import '../../baseWidgets/alertDialog/alert_dialog.dart';
import 'home/home_screen.dart';
import 'notification/notifications.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex =0;

  final List<Widget> screens =[
    HomeScreen(),
    NotificationScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: screens[_selectedIndex],
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.white, spreadRadius: 5, blurRadius: 1),
          ],
        ),
        child: FloatingActionButton.large(
          backgroundColor: ColorResources.LIGHT_RED,
          child: SvgPicture.asset(Images.floating_icon),
          onPressed: (){
            showSOSDialog(context);
          },

        ),
      ),
      resizeToAvoidBottomInset: false,

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 16),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
          child: BottomNavigationBar(
            onTap: (index){

              setState(() {
                _selectedIndex=index;

              });
            },
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.only(right: width*0.1),
                      child: SvgPicture.asset(Images.home_icon,
                      color: _selectedIndex==0?ColorResources.LIGHT_RED:
                      Colors.black,)),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                      padding: EdgeInsets.only(left: width*0.1),
                      child: SvgPicture.asset(Images.bell_icon,
                        color: _selectedIndex==1?ColorResources.LIGHT_RED:
                        Colors.black,)),
                  label: ''
              )
            ],
          ),
        ),
      ),
    );
  }
}
