import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';
import 'doc_app.dart';
import 'core/routing/app_router.dart';

void main() {
  setupGetit();
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (BuildContext context) { 
      return DocApp(
        appRouter: AppRouter(),
      );

     },
   
  ));
}
// 