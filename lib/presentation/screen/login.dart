import 'package:fc_project/data/models/user_model.dart';
import 'package:fc_project/data/service/auth_service.dart';
import 'package:fc_project/presentation/const/colors.dart';
import 'package:fc_project/presentation/widget/mybutton.dart';
import 'package:fc_project/presentation/widget/mysizedbox.dart';
import 'package:fc_project/presentation/widget/mytextfeild.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
   LogIn({super.key});
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
             Text('Welcome',style: TextStyle(color: topTextcolor,fontSize: 28,fontWeight: FontWeight.w600),)),
              Text('Please enter your data to continue',
              style: TextStyle(color: textfeildcolor.withOpacity(0.7),fontSize:15),),

            const  SizedBox_Height(height: 150),
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
              SizedBox_width(width: 20,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Forgot password?',style: TextStyle(color: redColor,fontSize: 15),),
               ),
             ],
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
         
          
        }AuthImple().logIn(UserModel(username: usernameController.text,
        password: passwordController.text
            ));
            },'Login'),
          ),
          ],),
        )),
      ),
    );;
  }
}