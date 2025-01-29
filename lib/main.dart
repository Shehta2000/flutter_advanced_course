import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const FlutterAvancedCourse());
}
class FlutterAvancedCourse extends StatelessWidget {
  const FlutterAvancedCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return  const ScreenUtilInit(
      designSize: Size(375, 812),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false ,
        home: Scaffold(
          
          
        ),
      ),
    );
  }
}

