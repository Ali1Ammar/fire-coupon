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
      isDone: json['isDone'] as bool,
      effectType:
          CouponEffectType.fromJson(json['effectType'] as Map<String, dynamic>),
      extra: json['extra'] as String,
    );

Map<String, dynamic> _$$_CouponItemToJson(_$_CouponItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'expire': instance.expire.toIso8601String(),
      'usedType': instance.usedType.toJson(),
      'isDone': instance.isDone,
      'effectType': instance.effectType.toJson(),
      'extra': instance.extra,
    };
