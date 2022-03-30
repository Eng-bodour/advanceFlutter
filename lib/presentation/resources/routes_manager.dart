import 'package:advance_flutter/presentation/forgot_password/forgot_password_view.dart';
import 'package:advance_flutter/presentation/login/login_view.dart';
import 'package:advance_flutter/presentation/main/main_view.dart';
import 'package:advance_flutter/presentation/onboarding/onboarding_view.dart';
import 'package:advance_flutter/presentation/register/register_view.dart';
import 'package:advance_flutter/presentation/resources/stringes_manager.dart';
import 'package:advance_flutter/presentation/splash/splash_view.dart';
import 'package:advance_flutter/presentation/store_details/store_details_view.dart';

import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/loginRoute';
  static const String registerRoute = '/registerRoute';
  static const String forgotPasswordRoute = '/forgotPasswordRoute';
  static const String onBoardingRoute = '/onBoardingRoute';
  static const String mainRoute = '/mainRoute';
  static const String storeDetailsRoute = '/storeDetailsRoute';
}

class RouteGenerator {
  //
  //get Route
  //
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LogInView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefnedRoute();
    }
  }

  static Route<dynamic> unDefnedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  AppStringes.noRouteFound,
                ), // to do move this Strings manager
              ),
              body: const Center(
                child: Text(
                  AppStringes.noRouteFound,
                ), // to do move this Strings manager
              ),
            ));
  }
}
