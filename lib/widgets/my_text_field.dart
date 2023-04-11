import 'package:flutter/material.dart';
import 'package:nauggets_app/constant/colors.dart';

class TextFields extends StatelessWidget {
  TextFields(this.prefixText, this.hintText, this.labelText, this.icons,
      this.keyboardType, this.obsecureText,
      {Key? key})
      : super(key: key);

  String prefixText;
  String labelText;
  String hintText;
  IconData icons;
  TextInputType keyboardType;
  bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: textColor,
        style: const TextStyle(
            color: textColor, fontSize: 30, fontWeight: FontWeight.w300),
        keyboardType: keyboardType,
        obscureText: obsecureText,
        decoration: InputDecoration(
          prefix: Text(
            prefixText,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          labelText: labelText,
          //babel text
          hintText: hintText,
          //hint text
          prefixIcon: Icon(
            icons,
            color: textColor,
          ),
          //prefix iocn
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            color: textColor,
          ),
          //hint text style
          labelStyle:
          const TextStyle(fontSize: 18, color: textColor), //label style
        ));
  }
}