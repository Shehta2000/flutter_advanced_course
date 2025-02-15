import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/sign_up/ui/sign_up_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../di/dependency_injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const OnboardingScreen(),
        );
       
      case Routes.loginScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
         case Routes.signUpScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SignUpScreen(),
        );
         case Routes.homeScreen:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const HomeScreen(),
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
