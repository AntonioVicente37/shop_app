import 'package:flutter/material.dart';
import 'package:shop_app/route.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(), 
      // home: const SplashScreen()
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );  
  }
}
