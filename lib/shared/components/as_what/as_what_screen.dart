import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/colors.dart';
import '../components.dart';

class buildAsWhatList extends StatelessWidget {
  const buildAsWhatList({
    Key? key,
    required this.image,
    required this.text
  }) : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      width:size.width,
      height: size.height*0.11,
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: size.width*0.03),
        child: Row(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            textWidget(
              text: text,
              fontFamily: 'Poppins',
              fontSize: 25.sp,
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
            ),
            const Spacer(),
            SvgPicture.asset('assets/icons/right_arrow.svg')
          ],
        ),
      ),
      decoration: BoxDecoration(
        boxShadow:const [
          BoxShadow(
            color: Color(0xffF2F2F2),
            blurRadius:20.0, // soften the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              2.0, // Move to bottom 10 Vertically
            ),
          ),

        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
