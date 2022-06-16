import 'package:center_app/shared/components/components.dart';
import 'package:center_app/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FrenchScreen extends StatelessWidget {
  const FrenchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.whatsapp,
          size: 35.sp,
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: gradiantScaffoldColor(
        child:Column(
          children: [
            defaultSizeBoxStart(context),
            customAppBar(size,'French'),
            SizedBox(
              height: size.height*0.05,
            ),

            SingleChildScrollView(
              physics:const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width*0.07),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/category.png',fit: BoxFit.cover,),
                    SizedBox(height: size.height*0.02,),
                    textWidget(
                        text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                        fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        color:const Color(0XFF707070),
                        fontWeight: FontWeight.w400,
                    ),
                    textWidget(
                      text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                      fontFamily: 'Poppins',
                      fontSize: 12.sp,
                      color:const Color(0XFF707070),
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: size.height*0.02,),
                    textWidget(
                      text: "Course Price",
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      color:btnColor,
                      fontWeight: FontWeight.w600,
                    ),
                    textWidget(
                      text: "100\$",
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                      color:btnColor,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: size.height*0.03,),
                    Row(
                      children: [
                        Image.asset('assets/images/video-gallery.png'),
                        SizedBox(width:size.width*0.02,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textWidget(
                              text: "60 Lesson",
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              color:btnColor,
                              fontWeight: FontWeight.w600,
                            ),
                            textWidget(
                              text: "60 Video - 30 Sheet - 15 Quiz",
                              fontFamily: 'Poppins',
                              fontSize: 12.sp,
                              color:btnColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
          ) ,
      ),
    );
  }
}
