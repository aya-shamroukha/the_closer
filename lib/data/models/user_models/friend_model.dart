// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FriendModel {
  String message;
  FriendModel({
    required this.message,
  });

  FriendModel copyWith({
    String? message,
  }) {
    return FriendModel(
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory FriendModel.fromMap(Map<String, dynamic> map) {
    return FriendModel(
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FriendModel.fromJson(String source) => FriendModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FriendModel(message: $message)';

  @override
  bool operator ==(covariant FriendModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
