import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fc_project/data/models/produt_models/page_list_model.dart';
import 'package:fc_project/data/service/product_service.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductImple productimple;
  ProductBloc(this.productimple) : super(LoadingState()) {
 

    on<GetProduct>((event, emit)async {

     var product= await productimple.list();
      List<ProductPageListrdModel> finaldata = List.generate(product['data'].length, (index) => ProductPageListrdModel.fromMap(product['data'][index]));
      emit(SuccessState( listproduct:finaldata));
    });
  }
}
