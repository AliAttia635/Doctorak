// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'data')
  List<SpecializationData> data;
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'code')
  int code;
  SpecializationResponseModel({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationModelFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'doctors')
  List<DoctorModel> doctors;

  SpecializationData({
    required this.id,
    required this.name,
    required this.doctors,
  });

  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class DoctorModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'phone')
  String phone;
  @JsonKey(name: 'photo')
  String photo;
  @JsonKey(name: 'gender')
  String gender;
  @JsonKey(name: 'address')
  String address;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'degree')
  String degree;
  @JsonKey(name: 'specialization')
  SpecializationSmallModel specialization;
  @JsonKey(name: 'city')
  CityModel city;
  @JsonKey(name: 'appoint_price')
  int appointPrice;
  @JsonKey(name: 'start_time')
  String startTime;
  @JsonKey(name: 'end_time')
  String endTime;

  DoctorModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.photo,
    required this.gender,
    required this.address,
    required this.description,
    required this.degree,
    required this.specialization,
    required this.city,
    required this.appointPrice,
    required this.startTime,
    required this.endTime,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}

@JsonSerializable()
class SpecializationSmallModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;

  SpecializationSmallModel({required this.id, required this.name});

  factory SpecializationSmallModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationSmallModelFromJson(json);
}

@JsonSerializable()
class CityModel {
  int id;
  String name;
  GovernrateModel governrate;

  CityModel({required this.id, required this.name, required this.governrate});

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}

@JsonSerializable()
class GovernrateModel {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;

  GovernrateModel({required this.id, required this.name});

  factory GovernrateModel.fromJson(Map<String, dynamic> json) =>
      _$GovernrateModelFromJson(json);
}
