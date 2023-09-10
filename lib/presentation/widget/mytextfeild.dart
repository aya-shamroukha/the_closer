// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable


import 'package:fc_project/presentation/const/colors.dart';
import 'package:flutter/material.dart';
class UsernameTextField extends StatelessWidget {
   UsernameTextField({
    super.key,
  });
 TextEditingController usernameController=TextEditingController();
GlobalKey<FormState>formstate= GlobalKey<FormState>();
// send(){
//       var formdata=formstate.currentState;
//       if(formdata!.validate()){
//         print('yes');
        
//       }
//     }
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        // autovalidateMode: AutovalidateMode.always,
        // key: formstate,
        // validator: (text){
        //   if(usernameController.text.length<4){
        //       print('object2');
        //     return" yes";
          
        //   }else{
        //     return'';
        //   }
        // },
        autofocus: true,
        controller: usernameController,
             cursorColor: textfeildcolor,
            decoration: 
            InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Username',
              labelStyle: TextStyle(color: textfeildcolor , fontSize: 13,),
             
              
              
            ),
      ),
    );
  }
}
 
 class PasswordTextField extends StatelessWidget {
   PasswordTextField({
    super.key,
  });
TextEditingController passwordController=TextEditingController();
GlobalKey<FormState>formstate= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
      //  autovalidateMode: AutovalidateMode.always,
        key: formstate,
        validator: (text){
          if(passwordController.text.length<4){
              print('object2');
            return" too short";
          
          }else{
            return'';
          }},
       
        controller:passwordController ,
             cursorColor: textfeildcolor,
            decoration: 
            InputDecoration(
              suffixText: passwordController.text.length<4?'weak':"strong" ,
            suffixStyle: TextStyle(color:  passwordController.text.length<4?Colors.red:checkColor),
              border: UnderlineInputBorder(),
              labelText: 'Password',
              labelStyle: TextStyle(color: textfeildcolor , fontSize: 13,),
             
              
              
            ),
      ),
    );
  }
}
 class EmailTextField extends StatelessWidget {
    EmailTextField({
    super.key,
  });
 TextEditingController emailController=TextEditingController();
GlobalKey<FormState>formstate= GlobalKey<FormState>();
send(){
      var formdata=formstate.currentState;
      if(formdata!.validate()){
        print('yes');
        
      }
    }
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        key: formstate,
        validator: (text){},
        autofocus: true,
        controller:emailController ,
             cursorColor: textfeildcolor,
            decoration: 
            InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Email Address',
              labelStyle: TextStyle(color: textfeildcolor , fontSize: 13,),
             
              
              
            ),
      ),
    );
  }
}
 