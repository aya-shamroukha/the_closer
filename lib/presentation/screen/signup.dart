import 'package:fc_project/data/model/signup.dart';
import 'package:fc_project/data/service/auth_service.dart';
import 'package:fc_project/presentation/const/colors.dart';
import 'package:fc_project/presentation/widget/mybutton.dart';
import 'package:fc_project/presentation/widget/mysizedbox.dart';
import 'package:fc_project/presentation/widget/mytextfeild.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
   SignUp({super.key});
         
GlobalKey<FormState>formstate= GlobalKey<FormState>();
 TextEditingController emailController=TextEditingController();
 TextEditingController passwordController=TextEditingController();
TextEditingController usernameController=TextEditingController();

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
             Text('Sign Up',style: TextStyle(color: topTextcolor,fontSize: 28,fontWeight: FontWeight.w600),)),
            const  SizedBox_Height(height: 150),
            Padding(
              padding: const EdgeInsets.all(10),
              child: UsernameTextField()
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child:PasswordTextField()
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child:EmailTextField(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
             const Text('Remember me'),
              Switch(
                value: false, onChanged: (vaule){})
            ],),
      
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 75,
            child: myButton((){
             var formdata=formstate.currentState;
        if(formdata!.validate()){
          print('object');
         
          
        }AuthImple().signUp(SignUpModel(
              username:usernameController.text ,
              password: passwordController.text,
              password_confirmation: passwordController.text));
            },'Sign Up'),
          ),
          ],),
        )),
      ),
    );
  }
}
