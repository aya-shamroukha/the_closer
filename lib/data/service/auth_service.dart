import 'package:dio/dio.dart';
import 'package:fc_project/data/local_data/local_storage.dart';
import 'package:fc_project/data/model/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthService {
  signUp(SignUpModel data);

  logIn();

  logOut();
}

class AuthImple extends AuthService {
  @override
  logIn() {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  signUp(SignUpModel data) async {
    Dio dio = Dio();
    Response req = await dio.post("http://172.16.40.84:8000/api/signup",
        data: data.toJson());
    if (req.statusCode == 200) {
      print(req.data['data']['token']);
      myMagic.get<SharedPreferences>().setString(
          'token', '12|240I1J0459iH51WdpgogVLGTleS8zRWfKAqwrVmI20dc3431');
      return req.data;
    }
  }
}
