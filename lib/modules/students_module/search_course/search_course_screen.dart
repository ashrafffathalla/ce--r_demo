import 'package:center_app/shared/components/components.dart';
import 'package:center_app/shared/widget/search_widget/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchCourseScreen extends StatelessWidget {
  const SearchCourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: gradiantScaffoldColor(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              defaultSizeBoxStart(context),
              customAppBar(size, 'Search'),
              SizedBox(
                height: size.height * 0.03,
              ),
              const SearchScreen(text: 'Arabic Lesson'),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget buildCategoryCard(size) => Container(
        width: size.width,
        height: size.height * 0.12,
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.02, vertical: size.height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textWidget(
                    text: 'French Course',
                    fontFamily: 'Poppins',
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  textWidget(
                    text: '60 Lesson',
                    fontFamily: 'Poppins',
                    fontSize: 13.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  SvgPicture.asset('assets/icons/stars.svg')
                ],
              ),
              SvgPicture.asset('assets/icons/green_right_arrow.svg')
            ],
          ),
        ),
      );
}
