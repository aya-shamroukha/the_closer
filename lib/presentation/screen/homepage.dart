import 'package:fc_project/data/models/produt_models/page_list_model.dart';
import 'package:fc_project/data/service/product_service.dart';
import 'package:fc_project/domain/bloc/bloc/product_bloc.dart';
import 'package:fc_project/presentation/const/colors.dart';
import 'package:fc_project/presentation/widget/mysizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

List image=[{
    'image':'assets/1 (2).png',
  
  },{'image':'assets/2 (2).png',},
  {'image':'assets/3 (2).png',},
  {'image':'assets/4 (2).png',}]
  
  ;
  @override
  
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(ProductImple())..add(GetProduct()),
      child: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox_Height(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: textfeildcolor.withOpacity(0.2)),
                      child: Icon(Icons.menu)),
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: textfeildcolor.withOpacity(0.2)),
                      child: Icon(Icons.badge_outlined))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Hello',
                      style: TextStyle(
                          color: topTextcolor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600)),
                  Text('Welcome to Laza.',
                      style: TextStyle(
                          color: textfeildcolor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search:',
                  fillColor: searchcolor,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: searchcolor),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if(state is SuccessState){
                  List<ProductPageListrdModel> productlist=state.listproduct;
                  return Expanded(child: 
                  GridView.builder(
                    itemCount:productlist.length ,
                    scrollDirection: Axis.vertical,
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 160,
                          height: 257,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)),
                          child: 
                        Column(
                          children: [
                            ClipRRect(child:
                              Image.asset('images/1.png',width: 160,fit: BoxFit.fill,),
                            ),
                           
                            Text('${productlist[index].title}'),
                          ],
                        )
                        ,),
                      );
                    }
                    ));
                }
               else if(state is ErrorState){
                return Text('error');
              
              }else{return Text('data');}

              }
              ,
            )
          ],
        )),
      ),
    );
  }
}
