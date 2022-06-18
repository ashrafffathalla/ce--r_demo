import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    var searchController= TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0xff909090),
            blurRadius: 5.0, // soften the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              .01, // Move to bottom 10 Vertically
            ),
          ),

        ],
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextFormField(
        controller: searchController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusColor: Colors.transparent,
          labelText: text,
          labelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            color: Colors.grey,
          ),
          prefixIcon: Icon(
            Icons.search_sharp,
            size: 25.sp,
            color: Colors.grey[400],
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: MediaQuery
                .of(context)
                .size
                .width * 0.03,
            vertical: MediaQuery
                .of(context)
                .size
                .height * 0.01,
          ),
        ),
      ),
    );
  }
}
