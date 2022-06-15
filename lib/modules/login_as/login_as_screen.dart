import 'package:center_app/shared/components/as_what/as_what_screen.dart';
import 'package:center_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/style/colors.dart';

class LoginAs extends StatelessWidget {
  const LoginAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     body: gradiantScaffoldColor(
       child: SingleChildScrollView(
         physics:const BouncingScrollPhysics(),
         child: Column(
           children: [
             defaultSizeBoxStart(context),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 SizedBox(
                   width: size.width*0.9,
                   child: Image.asset(
                       'assets/images/maan.png',
                     fit: BoxFit.cover,
                   ),
                 )
               ],
             ),
             SizedBox(height: size.height*0.02,),
             textWidget(
               text: 'login As',
               fontFamily: 'Poppins',
               fontSize: 30.sp,
               color: btnColor,
               fontWeight: FontWeight.w500,
             ),
             SizedBox(height: size.height*0.02,),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
               child: Column(
                 children:[
                   const buildAsWhatList(
                       image: 'assets/images/student.png',
                     text: 'Student',
                   ),
                   SizedBox(
                     height: size.height*0.02,
                   ),
                   const buildAsWhatList(
                       image: 'assets/images/dad.png',
                     text: 'Guardian',
                   ),
                   SizedBox(
                     height: size.height*0.02,
                   ),
                   const buildAsWhatList(
                       image: 'assets/images/teacher.png',
                     text: 'Teacher',
                   ),
                   SizedBox(
                     height: size.height*0.02,
                   ),
                   const buildAsWhatList(
                       image: 'assets/images/customer-service.png',
                     text: 'Management',
                   ),
                   SizedBox(
                     height: size.height*0.02,
                   ),

                 ],
               ),
             ),
           ],
         ),
       ),
     )
    );
  }
}
