// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductPurchaseModel {
  String quantity;
  String product_id;
  ProductPurchaseModel({
    required this.quantity,
    required this.product_id,
  });

  ProductPurchaseModel copyWith({
    String? quantity,
    String? product_id,
  }) {
    return ProductPurchaseModel(
      quantity: quantity ?? this.quantity,
      product_id: product_id ?? this.product_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quantity': quantity,
      'product_id': product_id,
    };
  }

  factory ProductPurchaseModel.fromMap(Map<String, dynamic> map) {
    return ProductPurchaseModel(
      quantity: map['quantity'] as String,
      product_id: map['product_id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductPurchaseModel.fromJson(String source) => ProductPurchaseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ProductPurchaseModel(quantity: $quantity, product_id: $product_id)';

  @override
  bool operator ==(covariant ProductPurchaseModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.quantity == quantity &&
      other.product_id == product_id;
  }

  // @override
  // int get hashCode => quantity.hashCode ^ product_id.hashCode;
}
