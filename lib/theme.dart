import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/constants.dart';

ThemeData theme(){
   return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Muli',       
      appBarTheme: appBatTheme(),
      textTheme: texteTheme(),      
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(color: ktextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
      //If you are using latest version of flutter then label text and hin text show like this 
      //if you r using flutter less then 1.20.* then maybe this is not working properly
      // if we are define or floatingLabelBehavior in ou theme then it´s not applayed
      // floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: 
        const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder:outlineInputBorder,
      border: outlineInputBorder,
  );
}

TextTheme texteTheme() {
  return const TextTheme(
      bodyLarge: TextStyle(color: ktextColor),
      bodyMedium: TextStyle(color: ktextColor)
    );
}

AppBarTheme appBatTheme() {
  return AppBarTheme(
      color: Colors.white,                
      elevation: 0,          
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.light,        
      ),
      iconTheme: const IconThemeData(color: Colors.black), 
      titleTextStyle: const TextTheme(         
        titleLarge: TextStyle(color: ktextColor, fontSize: 18)
      ).titleLarge,
    );
}

