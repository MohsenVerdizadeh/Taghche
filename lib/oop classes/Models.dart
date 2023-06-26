import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  final String username;
  final String? email;
  final String password;
  final int? credit;
  final List<String>? ebooks;
  final List<String>? audiobooks;

  User({
    required this.username,
    this.email,
    required this.password,
    this.credit,
    this.ebooks,
    this.audiobooks,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      email: json['email'],
      password: json['password'],
      credit: json['credit'],
      ebooks: List<String>.from(json['ebooks'] ?? []),
      audiobooks: List<String>.from(json['audiobooks'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'password': password,
      'credit': credit,
      'ebooks': ebooks,
      'audiobooks': audiobooks,
    };
  }
}
