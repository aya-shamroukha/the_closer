
import 'package:dio/dio.dart';
import 'package:fc_project/data/local_data/local_storage.dart';
import 'package:fc_project/data/models/produt_models/add_discount.dart';
import 'package:fc_project/data/models/produt_models/page_list_model.dart';
import 'package:fc_project/data/models/produt_models/purchase_model.dart';
import 'package:fc_project/data/models/produt_models/update2_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProductService{
list();
   pageList();
  add();
  upDate(ProductPageListModel update);
  upDate2(ProductUpDate2Model update2);
  addDiscount(AddDiscountModel discount);
  purchase(ProductPurchaseModel purchase);
  delete();


}
class ProductImple extends ProductService{
  @override
  add() {
    throw UnimplementedError();
  }

  @override
  addDiscount(AddDiscountModel discount)async {
   Dio dio =Dio();
      Response response=await dio.get('http://192.168.43.91:8000/api/product/discount/1', options: Options(
        headers: {
          "Accept-Language":"ar",
          "Accept":"application/json",
          "Authorization":"Bearer ${myMagic.get<SharedPreferences>().getString('token')}"
        }
      ));
      if (response.statusCode==200){
        return response.data;
      }
     
  }

  @override
  delete() {
    throw UnimplementedError();
  }

  @override
  list()async {
   Dio dio =Dio();
      Response response=await dio.get('http://192.168.43.91:8000/api/product',
      options: Options(
        headers: {
          "Accept-Language":"ar",
          "Accept":"application/json",
          "Authorization":"Bearer ${myMagic.get<SharedPreferences>().getString('token')}"
        }
      )
      );
      if (response.statusCode==200){
        return response.data;
      }
      else return'error';
  }

  @override
  pageList() async{
    Dio dio =Dio();
      Response response=await dio.get('http://192.168.43.91:8000/api/product/1');
      if (response.statusCode==200){
        return response.data;
      }
  }

  @override
  purchase(ProductPurchaseModel purchase)async {
 Dio dio =Dio();
      Response response=await dio.post('http://192.168.43.91:8000/api/product/purchase',data: purchase.toJson());
      if (response.statusCode==200){
        return response.data;
      }
  }

  @override
  upDate(ProductPageListModel update)async {
    Dio dio =Dio();
     Response response=await dio.post('http://192.168.43.91:8000/api/product/7',data:update.toJson());
      if (response.statusCode==200){
        return response.data;
      }
  }
  
  @override
  upDate2(ProductUpDate2Model update2)async{
Dio dio =Dio();
      Response response=await dio.post('http://192.168.43.91:8000/api/product/translation/7',data: update2.toJson());
      if (response.statusCode==200){
        return response.data;
      }
  }

}