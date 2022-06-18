import 'package:center_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../shared/widget/search_widget/search_screen.dart';

class SearchCenterScreen extends StatelessWidget {
  const SearchCenterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
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
            customAppBar(size, 'Search'),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                children: [
                  const SearchScreen(text: 'Center Name'),
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
                    itemCount: 7,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
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
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.only(right: size.width * 0.02),
          child: Row(
            children: [
              SizedBox(
                height: size.height * 0.12,
                child: Image.asset(
                  'assets/images/center.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03, top: size.height * 0.02),
                child: Column(
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
                    SvgPicture.asset('assets/icons/stars.svg'),
                  ],
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward,
                size: 23.sp,
              ),
            ],
          ),
        ),
      );
}
