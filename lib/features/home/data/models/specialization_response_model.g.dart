// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationResponseModel _$SpecializationResponseModelFromJson(
  Map<String, dynamic> json,
) => SpecializationResponseModel(
  data: (json['data'] as List<dynamic>)
      .map((e) => SpecializationData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SpecializationResponseModelToJson(
  SpecializationResponseModel instance,
) => <String, dynamic>{'data': instance.data};

SpecializationData _$SpecializationDataFromJson(Map<String, dynamic> json) =>
    SpecializationData(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      doctors: (json['doctors'] as List<dynamic>)
          .map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationDataToJson(SpecializationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => DoctorModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  photo: json['photo'] as String?,
  gender: json['gender'] as String?,
  address: json['address'] as String?,
  description: json['description'] as String?,
  degree: json['degree'] as String?,
  city: json['city'] == null
      ? null
      : CityModel.fromJson(json['city'] as Map<String, dynamic>),
  appointPrice: (json['appoint_price'] as num?)?.toInt(),
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
);

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'address': instance.address,
      'description': instance.description,
      'degree': instance.degree,
      'city': instance.city,
      'appoint_price': instance.appointPrice,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };

CityModel _$CityModelFromJson(Map<String, dynamic> json) => CityModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  governrate: json['governrate'] == null
      ? null
      : GovernrateModel.fromJson(json['governrate'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CityModelToJson(CityModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'governrate': instance.governrate,
};

GovernrateModel _$GovernrateModelFromJson(Map<String, dynamic> json) =>
    GovernrateModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GovernrateModelToJson(GovernrateModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
