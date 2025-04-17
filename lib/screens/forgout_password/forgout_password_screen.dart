import 'package:flutter/material.dart';
import 'package:shop_app/screens/forgout_password/components/body.dart';

// ignore: must_be_immutable
class ForgoutPasswordScreen extends StatelessWidget {
  ForgoutPasswordScreen({super.key});
  static String routName = '/forgt_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Forgout Password')),
      ),
      body: const Body(),
    );
  }
}