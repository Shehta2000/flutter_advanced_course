import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
static TextStyle font24Black700Weight = TextStyle(
      color: Colors.black,
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
    );

   static TextStyle font32bluekBold = TextStyle(
      color: ColorManager.mainBlue,
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
    );
      static TextStyle font16greykRegular = TextStyle(
      color: ColorManager.grey,
      fontSize: 13.sp,
      fontWeight: FontWeight.normal,
    );
       static TextStyle font16white600Weight = TextStyle(
      color: ColorManager.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
    );



}