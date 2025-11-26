


import 'package:fitness_app/core/enum/view_state.dart';
import 'package:flutter/cupertino.dart';

class SignupScreenModel extends BaseViewModel{

  final login=GlobalKey<FormState>();

  final signup= GlobalKey<FormState>();

    userNameValidator (String? value){
  if(value!.isEmpty || value==null)
  {
  return "please enter your username,";
  }
  else
  return null;
  }

  String? emailvalidator (String? value){
    if(value!.isEmpty || value==null)
    {
      return "please enter your email,";
    }
    else
      return null;
  }

  String? passwordvalidator (String? value){
    if(value!.isEmpty || value==null)
    {
      return "please enter your username,";
    }
    else if(value.length<8){
      return "enter atleast 8 character";
    }
    else
      return null;
  }

  bool Login(){
    if(login.currentState!.validate()){
      return true;
    }
    else{
      return false;
    }
  }
  bool Signup(){
    if(signup.currentState!.validate()){
      return true;
    }
    else{
      return false;
    }
  }
}
