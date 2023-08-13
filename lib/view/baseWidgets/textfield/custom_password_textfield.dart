import 'package:flutter/material.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/custom_themes.dart';

class CustomPasswordTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintTxt;
  final FocusNode? focusNode;
  final FocusNode? nextNode;
  final TextInputAction? textInputAction;
  final Color? fillColor;

  CustomPasswordTextField({this.controller, this.hintTxt, this.focusNode, this.nextNode, this.textInputAction , this.fillColor});

  @override
  _CustomPasswordTextFieldState createState() => _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorResources.WHITE,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: ColorResources.SILVER_GREY),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 1, blurRadius: 7, offset: Offset(0, 1)) // changes position of shadow
        ],
      ),
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        controller: widget.controller,
        obscureText: _obscureText,
        focusNode: widget.focusNode,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        onFieldSubmitted: (v) {
          setState(() {
            widget.textInputAction == TextInputAction.done
                ? FocusScope.of(context).consumeKeyboardToken()
                : FocusScope.of(context).requestFocus(widget.nextNode);
          });
        },
        validator: (value) {
          return null;
        },
        decoration: InputDecoration(
            suffixIcon: IconButton(icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility), onPressed: _toggle),
            hintText: widget.hintTxt ?? '',
            contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
            isDense: true,
            filled: null,
            fillColor: ColorResources.WHITE,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorResources.SILVER_GREY,width: 1),
                borderRadius: BorderRadius.circular(5)),
            hintStyle: titilliumRegular.copyWith(color: ColorResources.WHITE),
            border: InputBorder.none),
      ),
    );
  }
}