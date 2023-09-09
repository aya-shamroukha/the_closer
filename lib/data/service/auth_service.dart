import 'package:dio/dio.dart';
import 'package:fc_project/data/local_data/local_storge.dart';
import 'package:fc_project/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthService {


signUp();

logIn(UserModel data);

logOut();
}

class AuthImple extends AuthService {
  @override
  logIn(UserModel data)async {
    Dio dio=Dio();
     
    Response response=await dio.post('http://172.16.40.84:8000/api/signin',data: data.toJson());
    
    if (response.statusCode==200){
      print(response.data['data']['token']);
      myMagic.get<SharedPreferences>().setString('token', '');
      return response.data;
    }
    else{
      return 'error';
    }
  }

  @override
  logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }
  
}