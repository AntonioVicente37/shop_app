import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/size_config.dart';

//This is the best pratice
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
       'text': 'Welcome to Tokoto, Let´s shop!', 
       'image': 'assets/images/splash_1.png',
    },
    {
       'text': 'We help people conect with store \nround United State of America !', 
       'image': 'assets/images/splash_2.png',
    },
    {
       'text': 'We show the easy way to shop. \nJust stay at home with us', 
       'image': 'assets/images/splash_3.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              //PageView faz um slade
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                   image: splashData[index]['image']!, 
                   text: splashData[index]['text']!
                )
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)
                ),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length, 
                        (index) => buildDot(index: index)
                      ),
                    ),
                    const Spacer(flex: 3,), 
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                         Navigator.pushNamed(context, SignInScreen.routName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
//Contador de numero de slads na Tela de Splash
AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3) 
      ),
    );
  }
}   
