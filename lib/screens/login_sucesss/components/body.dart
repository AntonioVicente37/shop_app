import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04,), 
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.5, //50%
        ),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: 'Back to home', 
            press: (){
               Navigator.pushNamed(context, HomeScreen.routeName);
            }
          ),
        ),
        const Spacer()
      ],
    );
  }
}