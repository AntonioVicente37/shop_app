import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/size_config.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
            itemCount: demoCarts.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
              key: Key(demoCarts[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15)
                  ),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset('assets/icons/Trash.svg')
                  ],
                ),
              ),
              onDismissed: (direction){
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              child: CartItemCard(cart: demoCarts[index],)
             ),
            ),     
      ),
    );
  }
}