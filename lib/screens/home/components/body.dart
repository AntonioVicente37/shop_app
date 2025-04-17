import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20),),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(20),),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(20),),            
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(20),),            
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(20),), 
          ],
        ),  
      ),
    );
  }
}
