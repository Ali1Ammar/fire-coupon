// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_used_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneTimeCoupon _$$OneTimeCouponFromJson(Map<String, dynamic> json) =>
    _$OneTimeCoupon(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OneTimeCouponToJson(_$OneTimeCoupon instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$UntilExpireCoupon _$$UntilExpireCouponFromJson(Map<String, dynamic> json) =>
    _$UntilExpireCoupon(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UntilExpireCouponToJson(_$UntilExpireCoupon instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$CountTimeCoupon _$$CountTimeCouponFromJson(Map<String, dynamic> json) =>
    _$CountTimeCoupon(
      json['count'] as int,
      (json['ids'] as List<dynamic>).map((e) => e as String).toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CountTimeCouponToJson(_$CountTimeCoupon instance) =>
    <String, dynamic>{
      'count': instance.count,
      'ids': instance.ids,
      'type': instance.$type,
    };
