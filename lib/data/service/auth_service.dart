import 'package:dio/dio.dart';
import 'package:fc_project/data/local_data/local_storge.dart';
import 'package:fc_project/data/models/auth_models/signup.dart';
import 'package:fc_project/data/models/auth_models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthService {


signUp(SignUpModel data);

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
  signUp(SignUpModel data) async {
    Dio dio = Dio();
    Response req = await dio.post("http://172.16.40.84:8000/api/signup",
        data: data.toJson());
    if (req.statusCode == 200) {
      print(req.data['data']['token']);
      myMagic.get<SharedPreferences>().setString(
          'token', req.data['data']['token']);
      return true;
    }
    else {return false;}
  }
  
  @override
  logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }
}
