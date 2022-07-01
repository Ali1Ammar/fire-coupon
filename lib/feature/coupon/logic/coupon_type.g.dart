// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponRemoveAdUntilDate _$$CouponRemoveAdUntilDateFromJson(
        Map<String, dynamic> json) =>
    _$CouponRemoveAdUntilDate(
      DateTime.parse(json['date'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CouponRemoveAdUntilDateToJson(
        _$CouponRemoveAdUntilDate instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'type': instance.$type,
    };

_$CouponRemoveAdForDuration _$$CouponRemoveAdForDurationFromJson(
        Map<String, dynamic> json) =>
    _$CouponRemoveAdForDuration(
      Duration(microseconds: json['duration'] as int),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CouponRemoveAdForDurationToJson(
        _$CouponRemoveAdForDuration instance) =>
    <String, dynamic>{
      'duration': instance.duration.inMicroseconds,
      'type': instance.$type,
    };
