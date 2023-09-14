import 'package:dio/dio.dart';

abstract class CategoryService{
  list();
  upDate();
  add();

}
class CategoryImpl extends CategoryService{
  @override
  add() {
  
  }

  @override
  list() async{
   Dio dio=Dio();
   Response response=await dio.get('http://192.168.43.91:8000/api/category');
   if(response.statusCode==200){
    return response.data;
   }
  }

  @override
  upDate() {
   
  }

}