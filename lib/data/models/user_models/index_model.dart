// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class IndexModel {
  int id;
  String username;
  String role;
  IndexModel({
    required this.id,
    required this.username,
    required this.role,
  });

  IndexModel copyWith({
    int? id,
    String? username,
    String? role,
  }) {
    return IndexModel(
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

  factory IndexModel.fromMap(Map<String, dynamic> map) {
    return IndexModel(
      id: map['id'] as int,
      username: map['username'] as String,
      role: map['role'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory IndexModel.fromJson(String source) => IndexModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'IndexModel(id: $id, username: $username, role: $role)';

  @override
  bool operator ==(covariant IndexModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.username == username &&
      other.role == role;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode ^ role.hashCode;
}
