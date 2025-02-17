
import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/helper/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 195.h,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration:   BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const   DecorationImage(image: 
               AssetImage('assets/images/home_pattern.png'),
               fit: BoxFit.fill
              ),
            ),
            child: 
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.start,      
                  'Book and \nschedule with \nnearest doctor',style: TextStyles.font18WhiteMedium,),
                verticalSpace(16.h),
                   Expanded(
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48.r),
                        ),
                      ),
                      onPressed: (){},
                        child: Text(
                         'Find Nearby',style: TextStyles.font13BlueRegular ,
                       )),
                   ),
                   
                    ],
            
                  ),
    ),
          Positioned(
            top: 10.h,
            right: -15.w,
            child: 
             Image.asset('assets/images/doctors_image.png',
             height: 210.h,
             )),
        ]
      ),
    );
  }
}