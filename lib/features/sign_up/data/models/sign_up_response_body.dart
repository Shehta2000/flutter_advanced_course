import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response_body.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  int? code;
  bool? status;

  SignUpResponse({
    this.message,
    this.userData,
    this.code,
    this.status,
  });

  // Add this factory method
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);

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