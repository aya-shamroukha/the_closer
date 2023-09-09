import 'package:dio/dio.dart';
import 'package:fc_project/data/models/add_discount.dart';
import 'package:fc_project/data/models/page_list_model.dart';
import 'package:fc_project/data/models/purchase_model.dart';
import 'package:fc_project/data/models/update2_model.dart';

abstract class ProductService{
ProductPageListrdModel  list();
  ProductPageListrdModel pageList();
  add();
  upDate(ProductPageListrdModel update);
  upDate2(ProductUpDate2Model update2);
  addDiscount(AddDiscountModel discount);
  purchase(ProductPurchaseModel purchase);
  delete();


}
class ProductImple extends ProductService{
  @override
  add() {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  addDiscount(AddDiscountModel discount)async {
   Dio dio =Dio();
      Response response=await dio.get('http://172.16.40.84:8000/api/product/discount/1');
      if (response.statusCode==200){
        return response.data;
      }
      else return'error';
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  list()async {
   Dio dio =Dio();
      Response response=await dio.get('http://172.16.40.84:8000/api/product');
      if (response.statusCode==200){
        return response.data;
      }
      else return'error';
  }

  @override
  pageList() async{
    Dio dio =Dio();
      Response response=await dio.get('http://172.16.40.84:8000/api/product/1');
      if (response.statusCode==200){
        return response.data;
      }
      else return'error';
  }

  @override
  purchase(ProductPurchaseModel purchase)async {
 Dio dio =Dio();
      Response response=await dio.post('http://172.16.40.84:8000/api/product/purchase',data: purchase.toJson());
      if (response.statusCode==200){
        return response.data;
      }
      else return'error';
  }

  @override
  upDate(ProductPageListrdModel update)async {
    Dio dio =Dio();
     Response response=await dio.post('http://172.16.40.84:8000/api/product/7',data:update.toJson());
      if (response.statusCode==200){
        return response.data;
      }
      else return'error';
  }
  
  @override
  upDate2(ProductUpDate2Model update2)async{
Dio dio =Dio();
      Response response=await dio.post('http://172.16.40.84:8000/api/product/translation/7',data: update2.toJson());
      if (response.statusCode==200){
        return response.data;
      }
      else return'error';
  }

}