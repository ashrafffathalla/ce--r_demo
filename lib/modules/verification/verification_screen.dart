import 'package:center_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/style/colors.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              splashSizeBoxStart(context),
              SizedBox(
                height: size.height * 0.05,
              ),
              Image.asset('assets/images/verification.png'),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                'Verification Code',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "we have to send the verification\ncode to your mobile number",
                style: TextStyle(
                    color: const Color(0xff707070),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height * 0.052,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff707070), // red as border color
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: btnColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.052,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff707070), // red as border color
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.052,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff707070), // red as border color
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.052,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff707070), // red as border color
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.052,
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff707070), // red as border color
                      ),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              defaultButton(
                context,
                background: btnColor,
                function: () {},
                text: 'Confirm',
                width: size.width * 0.75,
                rounder: BorderRadius.circular(8.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
