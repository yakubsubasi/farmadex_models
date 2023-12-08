// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prescription _$PrescriptionFromJson(Map<String, dynamic> json) => Prescription(
      id: json['id'] as int?,
      name: json['name'] as String?,
      shortDescription: json['short_description'] as String?,
      explanation: (json['explanation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      medicines: (json['medicines'] as List<dynamic>?)
          ?.map((e) => Medicine.fromJson(e as Map<String, dynamic>))
          .toList(),
      tani: json['tani'] as String?,
      isIlyasYolbas: json['isIlyasYolbas'] as bool? ?? false,
    );

Map<String, dynamic> _$PrescriptionToJson(Prescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'short_description': instance.shortDescription,
      'explanation': instance.explanation,
      'isIlyasYolbas': instance.isIlyasYolbas,
      'medicines': instance.medicines?.map((e) => e.toJson()).toList(),
      'tani': instance.tani,
    };
