import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helper/spacing.dart';
import 'package:flutter_advanced_course/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctors_blue_container.dart';
import 'widgets/doctors_speciality_list_view.dart';
import 'widgets/doctors_speciality_see_all.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      margin: const EdgeInsets.fromLTRB(20, 16, 20, 20),
      width: double.infinity,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTopBar(),
         const  DoctorsBlueContainer(),
          verticalSpace(24.h),
        const  DoctorSpecialitySeeAll(),
        verticalSpace(16.h),
        const DoctorsSpecialityListView(),
        verticalSpace(16.h),
         const DoctorsListView()
        ],

      ),

    ),
    ),
    );
  }
}
