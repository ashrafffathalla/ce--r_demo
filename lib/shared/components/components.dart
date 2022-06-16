import 'dart:ffi';

import 'package:center_app/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Start Standard Size Box
Widget splashSizeBoxStart(context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.075,
    );

///Start default Size Box
Widget defaultSizeBoxStart(context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
    );

///End Standard Size Box
/// Start default FormField
Widget defaultFormField(
  BuildContext context, {
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  required FormFieldValidator<String>? validate,
  required String label,
  final VoidCallback? onTab,
  final VoidCallback? suffixPressed,
  bool isClickable = true,
  final VoidCallback? onSubmit,
}) =>
    TextFormField(
      style: const TextStyle(color: Colors.black),
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onTap: onTab,
      onFieldSubmitted: (String value) {
        //print(value);
      },
      validator: validate,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: btnColor,
          ),
        ),
        labelText: label,
        labelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          color: kPrimaryColorForm,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03,
          vertical: MediaQuery.of(context).size.height * 0.01,
        ),
      ),
    );

/// End default FormField
///Start Default Button
Widget defaultButton(
  BuildContext context, {
  double width = double.infinity,
  required Color background,
  required VoidCallback function,
  required String text,
  required BorderRadius rounder,
}) =>
    Container(
      height: MediaQuery.of(context).size.height * 0.065,
      decoration: BoxDecoration(
        borderRadius: rounder,
        color: background,
      ),
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 23.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );

///End Default Button
//Start Navigate Methods
void navigateTo(context, widget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ), (route) {
      return false;
    });

//End Navigate Methods
//Divider
Widget myDivider(BuildContext context) => Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.02,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: const Color(0xffEEDEBA),
      ),
    );

///Start Widget Scaffold Color
Widget gradiantScaffoldColor({
  double width = double.infinity,
  double height = double.infinity,
  required Widget child,
}) =>
    Container(
      height: width,
      width: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white,
            ]),
      ),
      child: child,
    );

///* Start TextWidget
Widget textWidget({
  required String text,
  required String fontFamily,
  required double fontSize,
  required Color color,
  required FontWeight fontWeight,
}) =>
    Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );

///Custom AppBar
Widget customAppBar(size, text) => Row(
      children: [
        SizedBox(
          width: size.width * 0.05,
        ),
        const Icon(
          Icons.arrow_back,
          size: 25,
        ),
        SizedBox(
          width: size.width / 4.5,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 30.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        )
      ],
    );
