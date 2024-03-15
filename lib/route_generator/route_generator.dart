import 'package:flutter/material.dart';
import 'package:list_app/screens/login.dart';
import 'package:list_app/screens/list_screen.dart';
import 'package:list_app/screens/detail_screen.dart';
import 'package:list_app/screens/sign_up_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SignUpScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case LoginScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case ListScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const ListScreen(),
        );
      case DetailScreen.routeName:
        var arguments = settings.arguments as List;

        return MaterialPageRoute(
          builder: (context) =>  DetailScreen(title:arguments[0],description:arguments[1],icon:arguments[2]),

        );



      default:
        return MaterialPageRoute(
          builder: (context) => Container(
            color: Colors.white,
            child: const Center(
              child: Text("Error, route not implemented."),
            ),
          ),
        );

    }
  }
}



