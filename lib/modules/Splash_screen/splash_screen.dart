import 'package:center_app/shared/components/components.dart';
import 'package:center_app/shared/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.02,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                splashSizeBoxStart(context),
                Image.asset(
                    'assets/images/logo.png',
                fit:BoxFit.cover,
                ),
                SizedBox(height: size.height*0.02,),
                Image.asset(
                  'assets/images/splash.png',
                  fit:BoxFit.cover,
                ),
                SizedBox(height: size.height*0.02,),
                Container(
                  width: size.width*0.7,
                  height: size.height*0.076,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Get Start',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w500,
                        color: btnColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0XFFF4F1E9),
              Color(0XFF688F4E),
            ]),),
      ),
    );
  }
}
