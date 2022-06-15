import 'package:center_app/shared/components/components.dart';
import 'package:center_app/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectGovernmentScreen extends StatefulWidget {
  const SelectGovernmentScreen({Key? key}) : super(key: key);

  @override
  State<SelectGovernmentScreen> createState() => _SelectGovernmentScreenState();
}

class _SelectGovernmentScreenState extends State<SelectGovernmentScreen> {
  final items = ['Cairo', 'Qalyubia', 'Sharkia', 'Alexandria'];
  String? value;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: gradiantScaffoldColor(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            defaultSizeBoxStart(context),
            Image.asset(
              'assets/images/small.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.094,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0XFF707070),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // textWidget(
                  //   text: 'Select Government',
                  //   fontFamily: 'Poppins',
                  //   fontSize: 20.sp,
                  //   color: kPrimaryColor,
                  //   fontWeight: FontWeight.w500,
                  // ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.02,
                        right: size.width * 0.04,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: DropdownButton(
                          underline: const SizedBox(),

                          icon: SvgPicture.asset(
                            'assets/icons/down.svg',
                          ),
                          //value: value,
                          hint: Padding(
                            padding: EdgeInsets.only(right: size.width * 0.2),
                            child: Text(
                              'Select Government',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          dropdownColor: const Color(0xffF4F1E9),

                          items: items.map(buildMenuItem).toList(),
                          onChanged: (value) =>
                              setState(() => this.value = value as String?),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height*0.1,),
            Container(
              width: double.infinity,
              height: size.height * 0.094,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0XFF707070),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // textWidget(
                  //   text: 'Select Government',
                  //   fontFamily: 'Poppins',
                  //   fontSize: 20.sp,
                  //   color: kPrimaryColor,
                  //   fontWeight: FontWeight.w500,
                  // ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.02,
                        right: size.width * 0.04,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: DropdownButton(
                          underline: const SizedBox(),

                          icon: SvgPicture.asset(
                            'assets/icons/down.svg',
                          ),
                          //value: value,
                          hint: Padding(
                            padding: EdgeInsets.only(right: size.width * 0.25),
                            child: Text(
                              'Select Classroom',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          dropdownColor: const Color(0xffF4F1E9),

                          items: items.map(buildMenuItem).toList(),
                          onChanged: (value) =>
                              setState(() => this.value = value as String?),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.sp,
            color: kPrimaryColor,
          ),
        ),
      );
}
