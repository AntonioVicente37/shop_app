import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05,), // 5%
              Text(
                'Complete profile',
                style: headingStyle,
              ),
              const Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05,), // 5%
              const CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30),),
              const Text(
                'By continuing your confirm that you agree \nwith our term and condition',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}