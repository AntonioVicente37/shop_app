import 'package:flutter/material.dart';
import 'package:shop_app/screens/login_sucesss/components/body.dart';

class LoginSucessScreen extends StatelessWidget {
  static String routeName = '/login_success';
  const LoginSucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Faz desaparecer o botão de voltar de cima
        leading: const SizedBox(),
        title: const Center(child: Text('Login Sucess'),),
      ),
      body: const Body(),
    );
  }
}