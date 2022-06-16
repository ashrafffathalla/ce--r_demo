import 'package:bloc/bloc.dart';
import 'package:center_app/modules/login/login_screen.dart';
import 'package:center_app/modules/reset_password/reset_password_screen.dart';
import 'package:center_app/modules/select_gaverment/select_gaverment_screen.dart';
import 'package:center_app/modules/signup/signup_screen.dart';
import 'package:center_app/modules/students_module/category/category_screen.dart';
import 'package:center_app/shared/blocobserver.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'modules/Splash_screen/splash_screen.dart';
import 'modules/login_as/login_as_screen.dart';
import 'modules/verification/verification_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
        () {
      // Use cubits...
    },
    blocObserver: MyBlocObserver(),
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,widget){
          return  MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(

            ),
            home: const CategoryScreen(),
          );
        }
    );
  }
}



