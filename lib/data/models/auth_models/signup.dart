// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SignUpModel {
  String username;
  String password;
  String password_confirmation;
  SignUpModel({
    required this.username,
    required this.password,
    required this.password_confirmation,
  });

  SignUpModel copyWith({
    String? username,
    String? password,
    String? password_confirmation,
  }) {
    return SignUpModel(
      username: username ?? this.username,
      password: password ?? this.password,
      password_confirmation:
          password_confirmation ?? this.password_confirmation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
      'password_confirmation': password_confirmation,
    };
  }

  factory SignUpModel.fromMap(Map<String, dynamic> map) {
    return SignUpModel(
      username: map['username'] as String,
      password: map['password'] as String,
      password_confirmation: map['password_confirmation'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpModel.fromJson(String source) =>
      SignUpModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'SignUpModel(username: $username, password: $password, password_confirmation: $password_confirmation)';

  @override
  bool operator ==(covariant SignUpModel other) {
    if (identical(this, other)) return true;

    return other.username == username &&
        other.password == password &&
        other.password_confirmation == password_confirmation;
  }

  @override
  int get hashCode =>
      username.hashCode ^ password.hashCode ^ password_confirmation.hashCode;
}
