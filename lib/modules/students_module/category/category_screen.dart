import 'package:center_app/shared/components/components.dart';
import 'package:center_app/shared/widget/search_widget/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/style/colors.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    Size size = MediaQuery.of(context).size;
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              defaultSizeBoxStart(context),
              Row(
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
                    'Category',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  )
                ],
              ),

              /// After APP BAR
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Column(
                  children: [
                    const SearchScreen(text: 'Search Category'),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => buildCategoryCard(size),
                      separatorBuilder: (context, index) => SizedBox(
                        height: size.height * 0.02,
                      ),
                      itemCount: 5,
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryCard(size) => Container(
        width: size.width,
        height: size.height * 0.12,
        decoration: BoxDecoration(
          // boxShadow:const [
          //   BoxShadow(
          //     color: Color(0xff909090),
          //     blurRadius:6.0, // soften the shadow
          //     offset: Offset(
          //       0.0, // Move to right 10  horizontally
          //       .01, // Move to bottom 10 Vertically
          //     ),
          //   ),
          //
          //   ],
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
