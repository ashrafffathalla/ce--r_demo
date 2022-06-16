import 'package:center_app/shared/components/components.dart';
import 'package:center_app/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var oldPasswordController = TextEditingController();
    var newPasswordController = TextEditingController();
    var confirmNewPasswordController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: gradiantScaffoldColor(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
            child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            children: [
              splashSizeBoxStart(context),
              splashSizeBoxStart(context),
              textWidget(
                  text: 'Reset Password',
                  fontFamily: 'Poppins',
                  fontSize: 30.sp,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: size.height*0.07,
              ),
              defaultFormField(
                  context,
                  controller: oldPasswordController,
                  type: TextInputType.visiblePassword,
                  validate: (value){
                    if(value!.isEmpty){
                      return'Pleas Enter your old Password';
                    }
                    return null;
                  },
                  label: 'Old Password',
              ),
              SizedBox(height: size.height*0.015,),
              defaultFormField(
                context,
                controller: newPasswordController,
                type: TextInputType.visiblePassword,
                validate: (value){
                  if(value!.isEmpty){
                    return'Pleas Enter your old Password';
                  }
                  return null;
                },
                label: 'New Password',
              ),
              SizedBox(height: size.height*0.015,),
              defaultFormField(
                context,
                controller: confirmNewPasswordController,
                type: TextInputType.visiblePassword,
                validate: (value){
                  if(value!.isEmpty){
                    return'Pleas Enter your old Password';
                  }
                  return null;
                },
                label: 'confirm Password',
              ),
              SizedBox(height: size.height*0.07,),
              defaultButton(
                context,
                background: btnColor,
                function: (){},
                text: 'Confirm',
                rounder: BorderRadius.circular(8),
                width: size.width * 0.75,
              ),
            ],
        ),
      ),
          )),
    );
  }
}
