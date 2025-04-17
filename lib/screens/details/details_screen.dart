import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/components/body.dart';

import '../../components/rounded_icon_btn.dart';
import '../../models/Product.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/details';
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments = ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      // By default our background color is white
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // Our deafult AppBar don´t have enough space
        // So let´s create our own CustomAppBar
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: RoundedIconBtn(
            iconData: Icons.arrow_back_ios, 
            press: () => Navigator.pop(context),  
          ),
        ),
      ),
      body: Body(product: arguments.product,),
    );
  }
}


// But we also need to pass our product to our details screen
// And we use name route so we need to create a arguments class

class ProductDetailsArguments{
  final Product product;

  ProductDetailsArguments({required this.product});
}