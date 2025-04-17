import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/components/body.dart';
import 'package:shop_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = '/spallash';
  @override
  Widget build(BuildContext context) {
    // you have to call it on your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}