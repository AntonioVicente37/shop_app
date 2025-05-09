import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradienetColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0XFFFF7643)],
);

const kSecondaryColor = Color(0xFF979797);
const ktextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    fontSize: getProportionateScreenWidth(28),
    color: Colors.black,
    fontWeight: FontWeight.bold,
    height: 1.5
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";


final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder()
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
borderRadius: BorderRadius.circular(15),
borderSide: BorderSide(color: ktextColor),
);
}