// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductUpDate {
  String title;
  String image;
  String description;
  int page_id;
  int price;
  int quantity;
  int intprofit;
  String local;
  ProductUpDate({
    required this.title,
    required this.image,
    required this.description,
    required this.page_id,
    required this.price,
    required this.quantity,
    required this.intprofit,
    required this.local,
  });

  ProductUpDate copyWith({
    String? title,
    String? image,
    String? description,
    int? page_id,
    int? price,
    int? quantity,
    int? intprofit,
    String? local,
  }) {
    return ProductUpDate(
      title: title ?? this.title,
      image: image ?? this.image,
      description: description ?? this.description,
      page_id: page_id ?? this.page_id,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      intprofit: intprofit ?? this.intprofit,
      local: local ?? this.local,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'image': image,
      'description': description,
      'page_id': page_id,
      'price': price,
      'quantity': quantity,
      'intprofit': intprofit,
      'local': local,
    };
  }

  factory ProductUpDate.fromMap(Map<String, dynamic> map) {
    return ProductUpDate(
      title: map['title'] as String,
      image: map['image'] as String,
      description: map['description'] as String,
      page_id: map['page_id'] as int,
      price: map['price'] as int,
      quantity: map['quantity'] as int,
      intprofit: map['intprofit'] as int,
      local: map['local'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductUpDate.fromJson(String source) => ProductUpDate.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductUpDate(title: $title, image: $image, description: $description, page_id: $page_id, price: $price, quantity: $quantity, intprofit: $intprofit, local: $local)';
  }

  @override
  bool operator ==(covariant ProductUpDate other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.image == image &&
      other.description == description &&
      other.page_id == page_id &&
      other.price == price &&
      other.quantity == quantity &&
      other.intprofit == intprofit &&
      other.local == local;
  }

  // @override
  // int get hashCode {
  //   return title.hashCode ^
  //     image.hashCode ^
  //     description.hashCode ^
  //     page_id.hashCode ^
  //     price.hashCode ^
  //     quantity.hashCode ^
  //     intprofit.hashCode ^
  //     local.hashCode;
  // }
}
