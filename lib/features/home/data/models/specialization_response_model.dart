import 'package:json_annotation/json_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  final List<SpecializationData> data;

  SpecializationResponseModel({required this.data});

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  final int id;
  final String name;
  final List<DoctorModel> doctors;

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
  final int id;
  final String name;
  final String? email;
  final String? phone;
  final String? photo;
  final String? gender;
  final String? address;
  final String? description;
  final String? degree;

  final CityModel? city;

  @JsonKey(name: 'appoint_price')
  final int? appointPrice;

  @JsonKey(name: 'start_time')
  final String? startTime;

  @JsonKey(name: 'end_time')
  final String? endTime;

  DoctorModel({
    required this.id,
    required this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.degree,
    this.city,
    this.appointPrice,
    this.startTime,
    this.endTime,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}

@JsonSerializable()
class CityModel {
  final int? id;
  final String? name;
  final GovernrateModel? governrate;

  CityModel({this.id, this.name, this.governrate});

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}

@JsonSerializable()
class GovernrateModel {
  final int? id;
  final String? name;

  GovernrateModel({this.id, this.name});

  factory GovernrateModel.fromJson(Map<String, dynamic> json) =>
      _$GovernrateModelFromJson(json);
}
