import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';
import 'doc_app.dart';
import 'core/routing/app_router.dart';

void main() {
  setupGetit();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
// 