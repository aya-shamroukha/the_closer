// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

class ProductPageListModel {
  String title;
  String description;
  int product_id;
  int language_id;
  ProductPageListModel({
    required this.title,
    required this.description,
    required this.product_id,
    required this.language_id,
  });

  ProductPageListModel copyWith({
    String? title,
    String? description,
    int? product_id,
    int? language_id,
  }) {
    return ProductPageListModel(
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

  factory ProductPageListModel.fromMap(Map<String, dynamic> map) {
    return ProductPageListModel(
      title: map['title'] as String,
      description: map['description'] as String,
      product_id: map['product_id'] as int,
      language_id: map['language_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductPageListModel.fromJson(String source) => ProductPageListModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductPageListModel(title: $title, description: $description, product_id: $product_id, language_id: $language_id)';
  }

  @override
  bool operator ==(covariant ProductPageListModel other) {
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
