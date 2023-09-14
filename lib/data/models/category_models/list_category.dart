import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
class ListCategoryModel {
String name;
int category_id;
int language_id;
  ListCategoryModel({
    required this.name,
    required this.category_id,
    required this.language_id,
  });

  ListCategoryModel copyWith({
    String? name,
    int? category_id,
    int? language_id,
  }) {
    return ListCategoryModel(
      name: name ?? this.name,
      category_id: category_id ?? this.category_id,
      language_id: language_id ?? this.language_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'category_id': category_id,
      'language_id': language_id,
    };
  }

  factory ListCategoryModel.fromMap(Map<String, dynamic> map) {
    return ListCategoryModel(
      name: map['name'] as String,
      category_id: map['category_id'] as int,
      language_id: map['language_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListCategoryModel.fromJson(String source) => ListCategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ListCategoryModel(name: $name, category_id: $category_id, language_id: $language_id)';

  // @override
  // bool operator ==(covariant ListCategoryModel other) {
  //   if (identical(this, other)) return true;
  
  //   return 
  //     other.name == name &&
  //     other.category_id == category_id &&
  //     other.language_id == language_id;
  // }

  // @override
  // int get hashCode => name.hashCode ^ category_id.hashCode ^ language_id.hashCode;
}
