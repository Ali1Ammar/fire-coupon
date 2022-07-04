// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponItem _$$_CouponItemFromJson(Map<String, dynamic> json) =>
    _$_CouponItem(
      name: json['name'] as String,
      code: json['code'] as String,
      expire: DateTime.parse(json['expire'] as String),
      usedType:
          CouponUsedType.fromJson(json['usedType'] as Map<String, dynamic>),
      effectType:
          CouponEffectType.fromJson(json['effectType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CouponItemToJson(_$_CouponItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'expire': instance.expire.toIso8601String(),
      'usedType': instance.usedType,
      'effectType': instance.effectType,
    };
