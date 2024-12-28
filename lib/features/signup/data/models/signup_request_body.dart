// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  String? name;
  String? email;
  String? phone;
  String? gender;
  String? password;
  String? passwordConfirmation;
  SignupRequestBody({
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.password,
    this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
