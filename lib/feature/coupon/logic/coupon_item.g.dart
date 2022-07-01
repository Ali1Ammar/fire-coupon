// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponItem _$CouponItemFromJson(Map<String, dynamic> json) => CouponItem(
      json['code'] as String,
      DateTime.parse(json['expire'] as String),
      json['isUsed'] as bool,
      CouponType.fromJson(json['extra'] as Map<String, dynamic>),
      json['name'] as String,
    );

Map<String, dynamic> _$CouponItemToJson(CouponItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'expire': instance.expire.toIso8601String(),
      'isUsed': instance.isUsed,
      'extra': instance.extra,
    };
