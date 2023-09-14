// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UnFriendModel {
  final int id;
  final String username;
  final String role;

  UnFriendModel({
    required this.id,
    required this.username,
    required this.role,
  });


  UnFriendModel copyWith({
    int? id,
    String? username,
    String? role,
  }) {
    return UnFriendModel(
      id: id ?? this.id,
      username: username ?? this.username,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'role': role,
    };
  }

  factory UnFriendModel.fromMap(Map<String, dynamic> map) {
    return UnFriendModel(
      id: map['id'] as int,
      username: map['username'] as String,
      role: map['role'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UnFriendModel.fromJson(String source) => UnFriendModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UnFriendModel(id: $id, username: $username, role: $role)';

  // @override
  // bool operator ==(covariant UnFriendModel other) {
  //   if (identical(this, other)) return true;
  
  //   return 
  //     other.id == id &&
  //     other.username == username &&
  //     other.role == role;
  // }

  // @override
  // int get hashCode => id.hashCode ^ username.hashCode ^ role.hashCode;
}
