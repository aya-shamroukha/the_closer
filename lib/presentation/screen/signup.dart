// ignore_for_file: use_build_context_synchronously

import 'package:fc_project/data/models/auth_models/signup.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formstate,
        child: SafeArea(child: 
        SingleChildScrollView(
          child: Stack(
            children: [
              // Positioned(
              //   right: 0,
              //   child: Image.asset('images/login_bottom.png',width: 60
              //   ,)),
              Column(
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
              
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
                //   children: [
                //  const Text('Remember me'),
                //   Switch(
                //     value: false, onChanged: (vaule){})
                // ],),
          SizedBox_Height(height: MediaQuery.of(context).size.height*0.24),
              Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                height: 75,
                child: myButton(()async{
                 var formdata=formstate.currentState;
        if(formdata!.validate()){
         
              
        } 
        var data= await AuthImple().signUp(SignUpModel(
                  username:usernameController.text ,
                  password: passwordController.text,
                  password_confirmation: passwordconfirmation.text));
                   if(data) {

                  Navigator.of(context).pushNamed('homepage');
                    }
                },'Sign Up',double.infinity,75),
              ),
              ],),
            ],
          ),
        )),
      ),
    );
  }
}
