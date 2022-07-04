// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_effect_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UntilDate _$$UntilDateFromJson(Map<String, dynamic> json) => _$UntilDate(
      DateTime.parse(json['date'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UntilDateToJson(_$UntilDate instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'type': instance.$type,
    };

_$ForDuration _$$ForDurationFromJson(Map<String, dynamic> json) =>
    _$ForDuration(
      Duration(microseconds: json['duration'] as int),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ForDurationToJson(_$ForDuration instance) =>
    <String, dynamic>{
      'duration': instance.duration.inMicroseconds,
      'type': instance.$type,
    };
