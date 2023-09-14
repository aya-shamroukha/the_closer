// ignore_for_file: must_be_immutable

import 'package:fc_project/data/models/auth_models/user_model.dart';
import 'package:fc_project/data/service/auth_service.dart';
import 'package:fc_project/presentation/const/colors.dart';
import 'package:fc_project/presentation/widget/mybutton.dart';
import 'package:fc_project/presentation/widget/mysizedbox.dart';
import 'package:fc_project/presentation/widget/mytextfeild.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
   LogIn({super.key});
  GlobalKey<FormState>formstate= GlobalKey<FormState>();
 TextEditingController passwordController1=TextEditingController();
TextEditingController usernameController1=TextEditingController();

bool is_switch=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formstate,
        child: SafeArea(child: 
        SingleChildScrollView(
          child: Column(
            children: [
           
          const  SizedBox_Height(height: 50),
            Center(child:
             Text('Welcome',style: TextStyle(color: topTextcolor,fontSize: 28,fontWeight: FontWeight.w600),)),
              Text('Please enter your data to continue',
              style: TextStyle(color: textfeildcolor.withOpacity(0.7),fontSize:15),),

            const  SizedBox_Height(height: 100),
            Padding(
              padding: const EdgeInsets.all(10),
              child: UsernameTextField()
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child:PasswordTextField()
            ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              const SizedBox_width(width: 20,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Forgot password?',style: TextStyle(color: firstcolor,fontSize: 15),),
               ),
             ],
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
              Text('Remember me',),
              Switch(
                activeColor: checkColor,
                value: is_switch, onChanged: (vaule){
                  is_switch=vaule;
                })
            ],),
        SizedBox_Height(height: MediaQuery.of(context).size.height*0.18,),
          Container(
            alignment: Alignment.bottomCenter,
           
            child: myButton((){
             var formdata=formstate.currentState;
        if(formdata!.validate()){
          print('object');
         
          
        }AuthImple().logIn(UserModel(username: usernameController1.text,
        password: passwordController1.text
            ));
            },'Login',double.infinity,75),
          ),
          ],),
        )),
      ),
    );
  }
}