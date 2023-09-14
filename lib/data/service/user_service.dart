import 'package:dio/dio.dart';
import 'package:fc_project/data/local_data/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserService{

unFriend(int id);
index();
Friend();

}
class UserImpl extends UserService{
  @override
  unFriend(int id) async{
    Dio dio=Dio();
    Response response=await dio.get('http://192.168.43.91:8000/api/user/friend/${id}',
      options: Options(
        headers: {
          "Accept-Language":"ar",
          "Accept":"application/json",
          "Authorization":"Bearer ${myMagic.get<SharedPreferences>().getString('token')}"
        }
      ));
      if(response.statusCode==200){
        return response.data;
      }
    
  }
  
  @override
  index()async {
     Dio dio=Dio();
    Response response=await dio.get('http://192.168.43.91:8000/api/user/',
      options: Options(
        headers: {
          "Accept-Language":"ar",
          "Accept":"application/json",
          "Authorization":"Bearer ${myMagic.get<SharedPreferences>().getString('token')}"
        }
      )
      );
      if(response.statusCode==200){
        return response.data;
      }else{
        print('object');
      }
  }
  
  @override
  Friend() async{
     Dio dio=Dio();
    Response response=await dio.get('http://192.168.43.91:8000/api/user/friend/2',
      options: Options(
        headers: {
          "Accept-Language":"ar",
          "Accept":"application/json",
          "Authorization":"Bearer ${myMagic.get<SharedPreferences>().getString('token')}"
        }
      ));
      if(response.statusCode==200){
        return response.data;
      }
  }

}