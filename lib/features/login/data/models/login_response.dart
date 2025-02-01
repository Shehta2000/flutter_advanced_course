import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart'; // Ensure this matches the generated file name

@JsonSerializable()
class LoginResponse {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  int? code;
  bool? status;

  LoginResponse({
    this.message,
    this.userData,
    this.code,
    this.status,
  });

  // Add this factory method
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  // Add this method

}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? username;

  UserData({
    this.token,
    this.username,
  });

  // Add this factory method
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  // Add this method

}