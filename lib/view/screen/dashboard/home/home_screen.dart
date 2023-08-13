import 'package:flutter/material.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/images.dart';
import '../../../baseWidgets/textfield/search_bar.dart';
import '../../drawer/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    TextEditingController searchbar = TextEditingController();

    @override
  void dispose() {
    // TODO: implement dispose
      searchbar.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(

        iconTheme: IconThemeData(
            size: 40,
            color: Colors.black
        ),
        backgroundColor: ColorResources.WHITE,
        actions: [
          Padding(
            padding: EdgeInsets.only(
                top: 8,
                bottom: 8,
                right: 18
            ),
            child: SearchBar(
              fillColor: ColorResources.WHITE,
              controller: searchbar,
              hintText: "Search User",
            ),
          )
        ],
      ),
      body: Container(
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.background_image),
            fit: BoxFit.fitWidth
          )
        ),
        child: Text("Google Map"),
      ),


    );
  }
}
