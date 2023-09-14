import 'package:fc_project/data/local_data/local_storage.dart';
import 'package:fc_project/presentation/const/theme.dart';
import 'package:fc_project/presentation/screen/friend_screen.dart';
import 'package:fc_project/presentation/screen/homepage.dart';
import 'package:fc_project/presentation/screen/login.dart';
import 'package:fc_project/presentation/screen/signup.dart';
import 'package:flutter/material.dart';

void main() async{
  await initgetit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      theme: iconBool?themeDark:themeLight,
      home:  SignUp(),
      routes: {
        "login":(context) => LogIn(),
        "friend":(context) =>  Friend(),
        "homepage":(context) => HomePage()
      },
    );
  }
}

