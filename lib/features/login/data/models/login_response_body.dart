// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  @JsonKey(name: 'status')
  bool? status;
  @JsonKey(name: 'code')
  int? code;
  LoginResponseBody({
    this.message,
    this.userData,
    this.status,
    this.code,
  });

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserData({
    this.token,
    this.userName,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
