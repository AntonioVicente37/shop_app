import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/components/body.dart';

import '../../components/curstom_botton_nav_bar.dart';
import '../../enums.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Profile'),),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile,),
    );
  }
}
