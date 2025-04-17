
import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/details_screen.dart';

import '../../../components/product_card.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Product', 
          press: (){}
        ),
        SizedBox(height: getProportionateScreenWidth(20),), 
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
               demoProducts.length, 
               (index) {
                  if(demoProducts[index].isPopular)
                    // ignore: curly_braces_in_flow_control_structures
                    return ProductCard(
                      product: demoProducts[index], 
                      press: () => 
                          Navigator.pushNamed(
                            context, 
                            DetailScreen.routeName,
                            arguments: ProductDetailsArguments(
                              product: demoProducts[index])
                          )
                    );
                    return const SizedBox
                      .shrink(); // here by default width and height is 0                  
               }),
              SizedBox(height: getProportionateScreenWidth(20),), 
            ],
          ),
        ),
      ],
    );
  }
}
