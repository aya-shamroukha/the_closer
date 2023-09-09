// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductPageListrdModel {
  String title;
  String description;
  int product_id;
  int language_id;
  ProductPageListrdModel({
    required this.title,
    required this.description,
    required this.product_id,
    required this.language_id,
  });

  ProductPageListrdModel copyWith({
    String? title,
    String? description,
    int? product_id,
    int? language_id,
  }) {
    return ProductPageListrdModel(
      title: title ?? this.title,
      description: description ?? this.description,
      product_id: product_id ?? this.product_id,
      language_id: language_id ?? this.language_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'product_id': product_id,
      'language_id': language_id,
    };
  }

  factory ProductPageListrdModel.fromMap(Map<String, dynamic> map) {
    return ProductPageListrdModel(
      title: map['title'] as String,
      description: map['description'] as String,
      product_id: map['product_id'] as int,
      language_id: map['language_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductPageListrdModel.fromJson(String source) => ProductPageListrdModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductPageListrdModel(title: $title, description: $description, product_id: $product_id, language_id: $language_id)';
  }

  @override
  bool operator ==(covariant ProductPageListrdModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.description == description &&
      other.product_id == product_id &&
      other.language_id == language_id;
  }

  // @override
  // int get hashCode {
  //   return title.hashCode ^
  //     description.hashCode ^
  //     product_id.hashCode ^
  //     language_id.hashCode;
  // }
}
