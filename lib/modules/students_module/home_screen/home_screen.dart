import 'package:center_app/shared/components/components.dart';
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
        child:Stack(
          children: [
          Positioned(
              child:Container(
                width: double.infinity,
                height: size.height*0.1,
                decoration:const BoxDecoration(
                  color: Color(0XFF9CD590),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
                ),
              ),
          ),  
          ],
        ),
      ),
    );
  }
}
