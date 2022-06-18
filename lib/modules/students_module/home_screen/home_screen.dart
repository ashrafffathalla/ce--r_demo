import 'package:center_app/shared/components/components.dart';
import 'package:center_app/shared/style/colors.dart';
import 'package:center_app/shared/widget/search_widget/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
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
      appBar: AppBar(
        elevation: 0,
        leading:const Icon(Icons.menu,size: 30,),
        actions:
        [
           Padding(
             padding: EdgeInsets.only(right: size.width*0.02),
             child:const Icon(Icons.notifications_none_sharp,size: 30,),
           )
        ],
        backgroundColor:const Color(0XFF9CD590),
      ),
      body: gradiantScaffoldColor(
        child:Column(
          children: [
          Container(
            width: double.infinity,
            height: size.height*0.13,
            decoration:const BoxDecoration(
              color: Color(0XFF9CD590),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding:EdgeInsets.symmetric(
                horizontal: size.width*0.05,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.sp,
                    backgroundColor: Colors.transparent,
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(30),
                        child: Image.asset("assets/images/circle.png"),
                      )
                  ),
                  SizedBox(width: size.width*0.05,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textWidget(
                          text: 'Good Morning',
                          fontFamily: 'Poppins',
                          fontSize: 22.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                      ),
                      textWidget(
                        text: "Let's Start Learning!",
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      const Text(''),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height*0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
            child: SingleChildScrollView(
              child: Column(
                children:[
                  const SearchScreen(text: 'Search'),
                  SizedBox(
                    height: size.height*0.01,
                  ),
                  Row(
                    children: [
                      textWidget(
                          text: 'All Center',
                          fontFamily: 'Poppins',
                          fontSize: 18.sp,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height*0.01,
                  ),
                  SizedBox(
                    height: size.height*0.135,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildCentersList(size),
                        separatorBuilder: (context, index) =>SizedBox(width: size.width*0.015,),
                        itemCount: 6
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.03,
                  ),
                  Row(
                    children: [
                      textWidget(
                        text: 'Top Course',
                        fontFamily: 'Poppins',
                        fontSize: 18.sp,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height*0.01,
                  ),
                  SizedBox(
                    height: size.height*0.135,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => buildTopCourseList(size),
                        separatorBuilder: (context, index) =>SizedBox(width: size.width*0.015,),
                        itemCount: 6
                    ),
                  ),

                ],
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
  Widget buildCentersList(size)=> Container(
    width: size.width*0.3,
    height: size.height*0.135,
    decoration: BoxDecoration(
      color:const Color(0xffF5F5F5),
      borderRadius: BorderRadius.circular(7),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/center_card.png',
          fit: BoxFit.cover,
        ),
        // Flexible(
        //   child: textWidget(
        //     text: "Eljamaa",
        //     fontFamily: 'Poppins',
        //     fontSize: 15.sp,
        //     color: Colors.white,
        //     fontWeight: FontWeight.w400,
        //   ),
        // ),
      ],
    ),
  );
  ///Start buildTopCourseList
  Widget buildTopCourseList(size)=> Stack(
    children: [
      Positioned(
          child: Container(
            width: size.width*0.3,
            height: size.height*0.135,
            decoration: BoxDecoration(
              color:Colors.transparent,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width*0.3,
                  height: size.height*0.135,
                  child: Image.asset(
                    'assets/images/top_cource.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
      ),
      Positioned(
        right: 0,
        child: Padding(
          padding:  EdgeInsets.only(
              right: size.width*0.05,
            top: size.height*0.02,
          ),
          child: Row(
            children: [
              Container(
                width: size.width*0.09,
                height: size.height*0.019,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.sp),
                  color: Colors.white,
                ),
                child: Row(
                  children:
                  [
                    Icon(
                        Icons.star,
                      color: Colors.yellow,
                      size: 13.sp,
                    ),
                    Text(
                        '4.5',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
