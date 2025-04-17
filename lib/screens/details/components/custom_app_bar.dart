//import 'package:flutter/material.dart';

/* class CustomAppBar extends PreferredSize{
  late final double rating;

  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            RoundedIconBtn(
              iconData: Icons.arrow_back_ios, 
              press: () => Navigator.pop(context)
            ),
            Container(
              padding: const  EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14)
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5,),
                  SvgPicture.asset('assets/icons/Star Icon.svg')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
 */