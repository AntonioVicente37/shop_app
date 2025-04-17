import 'package:flutter/material.dart';

import 'components/body.dart';
class SignInScreen extends StatelessWidget {
  static String routName = '/sign_in';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Sign In')),
      ),
      body: Body(),
    );
  }
}

 