import 'package:flutter/material.dart';
import 'package:school_management_system_app/home/home_screen.dart';
import 'package:school_management_system_app/utils/app_string.dart';
import 'package:school_management_system_app/view/admission/admission.dart';

class Routes {
  static const String splashRoute = "/";
  static const String admissionRoute = "/admission";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      // case Routes.loginRoute:
      // return MaterialPageRoute(builder: (_)=>LoginScreen());
      case Routes.admissionRoute:
        return MaterialPageRoute(
            settings: routeSettings, builder: (_) => AdmissionDesktopForm());
      //  case Routes.registerRoute:
      // return MaterialPageRoute(builder: (_)=>RegisterScreen());
      //  case Routes.forgotPasswordRoute:
      // return MaterialPageRoute(builder: (_)=>ForgotPasswordScreen());
      //  case Routes.mainRoute:
      // return MaterialPageRoute(builder: (_)=>MainScreen());
      //  case Routes.storeDetailsRoute:
      // return MaterialPageRoute(builder: (_)=>StoreDetailsScreen());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppString.noRoute),
              ),
              body: Center(
                child: Text(AppString.noRoute),
              ),
            ));
  }
}
