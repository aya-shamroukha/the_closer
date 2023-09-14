// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable, body_might_complete_normally_nullable


import 'package:fc_project/presentation/const/colors.dart';
import 'package:flutter/material.dart';
  TextEditingController passwordController=TextEditingController();
 TextEditingController usernameController=TextEditingController();
  TextEditingController passwordconfirmation=TextEditingController();

class UsernameTextField extends StatelessWidget {
   UsernameTextField({
    super.key,
  });
GlobalKey<FormState>formstate= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(

        autofocus: true,
        controller: usernameController,
             cursorColor: textfeildcolor,
            decoration: 
            InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Username:',
              labelStyle: TextStyle(color:textfeildcolor, fontSize: 14,),
             
              
              
            ),
      ),
    );
  }
}
 
 class PasswordTextField extends StatelessWidget {
   PasswordTextField({
    super.key,
  });GlobalKey<FormState>formstate= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool is_weak=true;
    bool is_match=true;
    return Form(
      child: StatefulBuilder(
        builder: (context,setstate) {
          return Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                key: formstate,
                validator: (text){
                  if( passwordController.text.isNotEmpty && passwordController.text.length<4){
                    
                    return" too short";
                  
                  }},
               onChanged: (value){
                  if(value.length< 8){
                    setstate((){

                    is_weak = true;
                    });
                  }
                  else {
                       setstate((){

                    is_weak = false;
                    });
                  }
               },
                controller:passwordController ,
                     cursorColor: textfeildcolor,
                    decoration: 
                    InputDecoration(
                      suffixText:  (is_weak)? 'weak':'strong' ,
                    suffixStyle: TextStyle(color: (is_weak)?Colors.red:checkColor),
                      border: UnderlineInputBorder(),
                      labelText: 'Password:',
                      labelStyle: TextStyle(color: textfeildcolor , fontSize: 14,),
                    ),
              ),
               TextFormField(
                onChanged:(val){
                  if(passwordconfirmation.text!= passwordController.text) {
                    setstate((){
                    is_match=true;
                  });
                  } else {
                       setstate((){

                    is_match = false;
                    });
                  }
                } ,
        autovalidateMode: AutovalidateMode.always,      
        validator: (text){
          if(passwordconfirmation.text!= passwordController.text){
           // print(passwordController.text);
                  return ' Password is not identical';
          }
        },
        autofocus: true,
        controller:passwordconfirmation ,
             cursorColor: textfeildcolor,
            decoration: 
            InputDecoration(
              suffix:Icon(is_match?Icons.check:Icons.check,color:is_match?Colors.white:checkColor) ,
              border: UnderlineInputBorder(),
              labelText: 'Password confirmation:',
              labelStyle: TextStyle(color: textfeildcolor , fontSize: 13,),
            ),
      ),
            ],
          );
        }
      ),
    );
  }
}
 