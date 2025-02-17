import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helper/spacing.dart';
import 'package:flutter_advanced_course/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ListView.builder(
            itemCount: 8,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column
              (children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: index ==0 ? 0 : 20.w,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28.r,
                        backgroundColor: ColorsManager.mainBlue,
                        child: Image.asset(
                          'assets/images/doctor_list_icon.png',
                          width: 28.w,
                          height: 28.h,
                        )
                      ),
                      verticalSpace(8),
                      Text(
                        'Specialiazation',
                        style: TextStyles.font13BlackRegluar,
                      )
                    ],
                  )
                )]);
            }));
  }
}
