import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/login_sucesss/login_sucess_screen.dart';
import 'package:shop_app/size_config.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../forgout_password/forgout_password_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];

  void addError({String? error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}){
    if(errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
        buildEmailFormField(),
        SizedBox(height: getProportionateScreenHeight(30),),
        buildPasswordFormField(),        
        SizedBox(height: getProportionateScreenHeight(30),),       
        Row(
          children: [
            Checkbox(
            value: remember,
            activeColor: kPrimaryColor, 
            onChanged: (value){
              setState(() {
                remember = value!;
              });
            }),
            const Text('Remember me'),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
            context, ForgoutPasswordScreen.routName),
              child: const Text(
                'Forgout Password',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
        FormError(errors: errors,),        
        SizedBox(height: getProportionateScreenHeight(20),),
        DefaultButton(  
          text: 'Continue', 
          press: (){
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
              // if all are valid then go to sucess screen
              Navigator.pushNamed(context, LoginSucessScreen.routeName);
            }
          }
        )
        ]
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
          obscureText: true,
          onSaved: (newValue) => password = newValue!,
          onChanged: (value){
          if(value.isNotEmpty){
            removeError(error: kPassNullError);
          }else if(value.length >= 8){
            removeError(error: kShortPassError);
          }
          return;
        },
          validator: (value){
          if(value!.isEmpty){
            addError(error: kPassNullError);
            return '';
          }else if(value.length < 8){
            addError(error: kShortPassError);
            return '';
          }
          return null;
        },
          decoration: const InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            //If you are using latest version of flutter then label text and hin text show like this 
            //if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,   
            suffixIcon: CustomSurfficxIcon(svgIcon: 'assets/icons/Lock.svg',)           
        ),
      );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(     
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue!,
         onChanged: (value){
          if(value.isNotEmpty){
            removeError(error: kEmailNullError);
          }else if(emailValidatorRegExp.hasMatch(value)){
             removeError(error: kInvalidEmailError);
          }
          return;
        },
        validator: (value){
          if(value!.isEmpty){
            addError(error: kEmailNullError);
            return '';
          }else if(!emailValidatorRegExp.hasMatch(value)){
            addError(error: kInvalidEmailError); 
            return '';
          }
          return null;
        },
        decoration: const InputDecoration(
          labelText: 'E-mail',
          hintText: 'Enter your email',
          //If you are using latest version of flutter then label text and hin text show like this 
          //if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,   
          suffixIcon: CustomSurfficxIcon(svgIcon: 'assets/icons/Mail.svg',)           
      ),
      );
  }
}
