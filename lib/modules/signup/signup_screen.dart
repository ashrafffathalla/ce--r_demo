import 'package:center_app/shared/components/components.dart';
import 'package:center_app/shared/style/colors.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userNameController = TextEditingController();
    var studentNumberController = TextEditingController();
    var studentGuardianNumberController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: gradiantScaffoldColor(
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: size.width*0.05,),
            child: SingleChildScrollView(
              physics:const BouncingScrollPhysics(),
              child: Column(
                children: [
                  splashSizeBoxStart(context),
                  Image.asset('assets/images/small.png',fit: BoxFit.cover,),
                  SizedBox(
                    height: size.height*0.04,
                  ),
                  defaultFormField(
                      context,
                      controller: userNameController,
                      type: TextInputType.text,
                      validate: (value){
                        if(value!.isEmpty){
                          return 'Pleas Enter Your User Name';
                        }
                        return null;
                      },
                      label: 'User Name'
                  ),
                  SizedBox(
                    height: size.height*0.015,
                  ),
                  defaultFormField(
                      context,
                      controller: studentNumberController,
                      type: TextInputType.number,
                      validate: (value){
                        if(value!.isEmpty){
                          return 'Pleas Enter Your Number';
                        }
                        return null;
                      },
                      label: 'Student  Number'
                  ),
                  SizedBox(
                    height: size.height*0.015,
                  ),
                  defaultFormField(
                      context,
                      controller: studentGuardianNumberController,
                      type: TextInputType.number,
                      validate: (value){
                        if(value!.isEmpty){
                          return 'Pleas Enter Your Guardian';
                        }
                        return null;
                      },
                      label: "Student's Guardian Number"
                  ),
                  SizedBox(
                    height: size.height*0.015,
                  ),
                  defaultFormField(
                      context,
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      validate: (value){
                        if(value!.isEmpty){
                          return 'Pleas Enter your Password';
                        }
                        return null;
                      },
                      label: "Password"
                  ),
                  SizedBox(
                    height: size.height*0.015,
                  ),
                  defaultFormField(
                      context,
                      controller: confirmPasswordController,
                      type: TextInputType.visiblePassword,
                      validate: (value){
                        if(value!.isEmpty){
                          return 'Pleas Enter Confirm Password';
                        }
                        return null;
                      },
                      label: "Confirm Password"
                  ),
                  SizedBox(
                    height: size.height*0.05,
                  ),
                  defaultButton(
                      context,
                      background: btnColor,
                      function: (){},
                      text: 'Sign Up',
                      rounder: BorderRadius.circular(8),
                      width: size.width * 0.75,
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
