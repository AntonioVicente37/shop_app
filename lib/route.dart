import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_sucesss/login_sucess_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

import 'screens/forgout_password/forgout_password_screen.dart';

//we use name route
//All our routes will be abvailable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routName: (context) => const SignInScreen(),
  ForgoutPasswordScreen.routName:(context) =>  ForgoutPasswordScreen(),
  LoginSucessScreen.routeName:(context) => const LoginSucessScreen(),
  SignUpScreen.routeName:(context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName:(context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailScreen.routeName:(context) => const DetailScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName:(context) => const ProfileScreen(),
};