import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sisonke/provider/auth_provider.dart';

class CustomCheckbox extends StatefulWidget {

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //print(Provider.of<AuthProvider>(context,listen: false).isChecked);
        Provider.of<AuthProvider>(context,listen: false).isChecked=!Provider.of<AuthProvider>(context,listen: false).isChecked;


      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            border: Border.all(
              color: Provider.of<AuthProvider>(context,listen: true).isChecked ? Colors.black : Colors.grey,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Provider.of<AuthProvider>(context,listen: true).isChecked
              ? Icon(
            Icons.check,
            size: 14.0,
            color: Colors.black,
          )
              : null,
        ),
      ),
    );
  }
}
