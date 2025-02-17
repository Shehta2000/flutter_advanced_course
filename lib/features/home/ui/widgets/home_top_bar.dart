import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helper/spacing.dart';
import 'package:flutter_advanced_course/core/theming/colors.dart';
import 'package:flutter_advanced_course/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
          'Hi, Omar!',
          style: TextStyles.font24BlackBold.copyWith(
            fontWeight: FontWeight.w600,
          ),
  
        ),
        Text('How are you today?',style: TextStyles.font14greyReglur,),
          ],
        ),
       const  Spacer(),
        CircleAvatar(
          radius: 24.r,
          backgroundColor: ColorsManager.moreLighterGray,
          child:  const  Icon(Icons.notifications,color:Colors.black,)),
      ],

    );
  }
}