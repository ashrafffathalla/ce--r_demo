import 'package:center_app/shared/components/components.dart';
import 'package:center_app/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: gradiantScaffoldColor(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  splashSizeBoxStart(context),
                  Image.asset('assets/images/big.png'),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  defaultFormField(
                    context,
                    controller: emailController,
                    type: TextInputType.number,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Pleas enter your Mobile Number';
                      }
                      return null;
                    },
                    label: 'Mobile Number',
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  defaultFormField(
                    context,
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Pleas enter your Password';
                      }
                      return null;
                    },
                    label: 'Password',
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  defaultButton(
                    context,
                    width: size.width * 0.75,
                    function: () {},
                    text: 'login',
                    background: btnColor,
                    rounder: BorderRadius.circular(8),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  textWidget(
                      text: 'forget Password?',
                      fontFamily: 'Poppins',
                      fontSize: 17.sp,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w400),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textWidget(
                          text: 'Create new account ',
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          color: btnColor,
                          fontWeight: FontWeight.w400),
                      textWidget(
                          text: ' Signup',
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
