import 'package:fc_project/presentation/const/colors.dart';
import 'package:fc_project/presentation/widget/mysizedbox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
        children: [
       const SizedBox_Height(height: 30,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(shape: BoxShape.circle,color:textfeildcolor.withOpacity(0.2)),
              child: Icon(Icons.menu)),
              Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(shape: BoxShape.circle,color:textfeildcolor.withOpacity(0.2)),
              child: Icon(Icons.badge_outlined))
          ],),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Text('Hello',style: TextStyle(color: topTextcolor,fontSize: 28,fontWeight: FontWeight.w600)),
            Text('Welcome to Laza.',style: TextStyle(color: textfeildcolor,fontSize: 15,fontWeight: FontWeight.w400)),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search:',
              fillColor: searchcolor,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color:searchcolor ),
                borderRadius: BorderRadius.circular(10)
                
              ),
              enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.grey.withOpacity(0.4) ),
                borderRadius: BorderRadius.circular(10)
              ),
              
            ),
          ),
        )
      ],)),
    );
  }
}