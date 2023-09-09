// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductUpDate2Model {
  bool data;
  String message;
  ProductUpDate2Model({
    required this.data,
    required this.message,
  });

  ProductUpDate2Model copyWith({
    bool? data,
    String? message,
  }) {
    return ProductUpDate2Model(
      data: data ?? this.data,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'message': message,
    };
  }

  factory ProductUpDate2Model.fromMap(Map<String, dynamic> map) {
    return ProductUpDate2Model(
      data: map['data'] as bool,
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductUpDate2Model.fromJson(String source) => ProductUpDate2Model.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ProductUpDate2Model(data: $data, message: $message)';

  @override
  bool operator ==(covariant ProductUpDate2Model other) {
    if (identical(this, other)) return true;
  
    return 
      other.data == data &&
      other.message == message;
  }

  // @override
  // int get hashCode => data.hashCode ^ message.hashCode;
}
