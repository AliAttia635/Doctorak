// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:docdoc_1/features/login/data/models/login_response_body.dart';

part 'signup_response_body.g.dart';

@JsonSerializable()
class SignupResponseBody {
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  @JsonKey(name: 'status')
  bool? status;
  @JsonKey(name: 'code')
  int? code;
  SignupResponseBody({
    this.message,
    this.userData,
    this.status,
    this.code,
  });

  factory SignupResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseBodyFromJson(json);
}
