import 'package:flutter/material.dart';
import '../../../core/helper/extention.dart';
import '../../../core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: TextButton.styleFrom(
        minimumSize: Size(311.w, 52.h),
        backgroundColor: ColorManager.mainBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
        
      child: Text('Get Started',style: TextStyles.font16white600Weight.copyWith(fontWeight: FontWeight.w500)),
      
    );
  }
}