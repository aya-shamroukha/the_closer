// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AddDiscountModel {
String code;
String percentage;
String from_date;
String to_date;
  AddDiscountModel({
    required this.code,
    required this.percentage,
    required this.from_date,
    required this.to_date,
  });

  AddDiscountModel copyWith({
    String? code,
    String? percentage,
    String? from_date,
    String? to_date,
  }) {
    return AddDiscountModel(
      code: code ?? this.code,
      percentage: percentage ?? this.percentage,
      from_date: from_date ?? this.from_date,
      to_date: to_date ?? this.to_date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'percentage': percentage,
      'from_date': from_date,
      'to_date': to_date,
    };
  }

  factory AddDiscountModel.fromMap(Map<String, dynamic> map) {
    return AddDiscountModel(
      code: map['code'] as String,
      percentage: map['percentage'] as String,
      from_date: map['from_date'] as String,
      to_date: map['to_date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddDiscountModel.fromJson(String source) => AddDiscountModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AddDiscountModel(code: $code, percentage: $percentage, from_date: $from_date, to_date: $to_date)';
  }

  @override
  bool operator ==(covariant AddDiscountModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.code == code &&
      other.percentage == percentage &&
      other.from_date == from_date &&
      other.to_date == to_date;
  }

  @override
  int get hashCode {
    return code.hashCode ^
      percentage.hashCode ^
      from_date.hashCode ^
      to_date.hashCode;
  }
}
