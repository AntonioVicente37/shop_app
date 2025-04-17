import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import '../../../components/social_card.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02,), // 2% total height
              Text(
                'Register Account',
                style: headingStyle
              ),
              const Text(  
                'Complette your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07,), // 7% total height
              const SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07,), // 7% total height
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(icon: 'assets/icons/google-icon.svg', press: (){},),
                    SocialCard(icon: 'assets/icons/facebook-2.svg', press: (){},),
                    SocialCard(icon: 'assets/icons/twitter.svg', press: (){},)
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                const Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition ',
                  textAlign: TextAlign.center,
                )
            ],
          ),
        ),
      ),
    );
  }
}
