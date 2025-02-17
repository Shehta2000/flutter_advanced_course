import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
     child: MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
       debugShowCheckedModeBanner: false,
       title: 'Doc App',
       theme: ThemeData(
         primaryColor: ColorsManager.mainBlue,
         scaffoldBackgroundColor: Colors.white,
       ),
       initialRoute: Routes.signUpScreen,
       onGenerateRoute: appRouter.generateRoute,
     ),
    );
  }
}