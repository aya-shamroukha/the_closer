
import 'package:fc_project/presentation/const/colors.dart';
import 'package:flutter/material.dart';

// class mybutton extends StatelessWidget {
//    mybutton({
//     super.key, required this.text,required this.onPressed
//   });
//   final String text;
//   final dynamic onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//           onPressed: (){
//             onPressed();
//           },
//           color: firstcolor,
//           child:  Text(text,style: TextStyle(color: Colors.white,fontSize: 17),),);
//   }
// }
Widget myButton(dynamic onPressed,String text){
  
  return MaterialButton(
          onPressed: (){
            onPressed();
          },
          color: firstcolor,
          height: 100,
          minWidth: double.infinity,
          child:  Text(text,style: TextStyle(color: Colors.white,fontSize: 17),),);
  
  
}