import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sisonke/util/color_resources.dart';
import 'package:sisonke/util/custom_themes.dart';



class SearchBar extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? textInputType;
  final int? maxLine;
  final FocusNode? focusNode;
  final FocusNode? nextNode;
  final TextInputAction? textInputAction;
  final bool isValidator;
  final String? validatorMessage;
  final Color fillColor;
  final Color boarderColor;
  final TextCapitalization capitalization;

  SearchBar(
      {this.controller,
        this.hintText,
        this.textInputType,
        this.maxLine,
        this.focusNode,
        this.nextNode,
        this.textInputAction,
        this.isValidator = false,
        this.validatorMessage,
        this.capitalization = TextCapitalization.none,
        this.fillColor = ColorResources.COLOR_PRIMARY,
        this.boarderColor = ColorResources.SILVER_GREY});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width*0.82,
      decoration: BoxDecoration(
        color: widget.fillColor,

        border: Border.all(color: widget.boarderColor),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 1)) // changes position of shadow
        ],
      ),
      child: TextFormField(

        controller: widget.controller,
        maxLines: widget.maxLine ?? 1,
        textCapitalization: widget.capitalization,
        focusNode: widget.focusNode,
        keyboardType: widget.textInputType ?? TextInputType.text,
        //keyboardType: TextInputType.number,
        initialValue: null,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        onFieldSubmitted: (v) {
          FocusScope.of(context).requestFocus(widget.nextNode);
        },
        //autovalidate: true,
        inputFormatters: [
          FilteringTextInputFormatter.singleLineFormatter
        ],
        validator: (input) {
          if (input?.isEmpty ?? false) {
            if (widget.isValidator) {
              return widget.validatorMessage ?? "";
            }
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: widget.hintText ?? '',
          filled: null,
          fillColor: widget.fillColor,
          contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
          isDense: true,
          counterText: '',
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorResources.SILVER_GREY,width: 1),
              borderRadius: BorderRadius.circular(12)),
          hintStyle: manropeRegular.copyWith(color: ColorResources.BLACK),
          errorStyle: TextStyle(height: 1.5),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
