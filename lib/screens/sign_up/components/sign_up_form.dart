import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String confirm_password;
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
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConfPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: 'Continue', 
            press: (){
              if(_formKey.currentState!.validate()){
                //Go to complete profile page
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            }
          )
      ],
      ),
    );
  }

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => confirm_password = newValue!,
        onChanged: (value){
        if(value.isNotEmpty){
          removeError(error: kMatchPassError);
        }else if(value.isNotEmpty && password == confirm_password){
          removeError(error: kMatchPassError);
        }
        return;
      },
        validator: (value){
        if(value!.isEmpty){
            addError(error: kPassNullError);
          return '';
        }else if(password != value){
            addError(error: kMatchPassError);
          return '';
        }
        return null;
      },
        decoration: const InputDecoration(
          labelText: 'Confirm Password',
          hintText: 'Re-enter your password',
          //If you are using latest version of flutter then label text and hin text show like this 
          //if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,   
          suffixIcon: CustomSurfficxIcon(svgIcon: 'assets/icons/Lock.svg',)           
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
        }else if(value.length < 8){
          removeError(error: kShortPassError);
        }
        password = value;
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