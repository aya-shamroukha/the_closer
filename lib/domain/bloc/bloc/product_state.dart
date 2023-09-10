part of 'product_bloc.dart';

 class ProductState extends Equatable {
  const ProductState();
  
  @override
  List<Object> get props => [];
}

 class LoadingState extends ProductState {}
  class SuccessState extends ProductState {
  List<ProductPageListrdModel> listproduct;

  SuccessState({required this.listproduct});
   @override
  List<Object> get props => [listproduct];

  }
 class ErrorState extends ProductState {}