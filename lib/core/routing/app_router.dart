import 'package:flutter/material.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

import 'routes.dart';

class AppRouter {

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>  const OnboardingScreen(),
        );        
         case Routes.loginScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const  LoginScreen(),
        );  
       
    
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}