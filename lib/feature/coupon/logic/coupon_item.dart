

import 'package:coupon/feature/coupon/logic/coupon_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_item.g.dart";

@JsonSerializable(anyMap: true)
class CouponItem {
  final String name;
  final String code;
  final DateTime expire;
  final bool isUsed;
  final CouponType extra;
  CouponItem(this.code, this.expire, this.isUsed, this.extra, this.name);

  factory CouponItem.fromJson(Map json) => _$CouponItemFromJson(json);
  Map<String, dynamic> toJson() =>   <String, dynamic>{
      'name': name,
      'code': code,
      'expire': expire.toIso8601String(),
      'isUsed': isUsed,
      'extra': extra.toJson(),
    };


  // String toArabicString(){
  //   return "${extra.toArabicString()} | ";
  // }
}