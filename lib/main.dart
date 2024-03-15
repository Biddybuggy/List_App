import 'package:flutter/material.dart';
import 'package:list_app/screens/login.dart';
import 'package:list_app/route_generator/route_generator.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute:LoginScreen.routeName,debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute);
  }
}