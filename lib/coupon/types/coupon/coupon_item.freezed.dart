// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponItem _$CouponItemFromJson(Map<String, dynamic> json) {
  return _CouponItem.fromJson(json);
}

/// @nodoc
mixin _$CouponItem {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  DateTime get expire => throw _privateConstructorUsedError;
  CouponUsedType get usedType => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  CouponEffectType get effectType => throw _privateConstructorUsedError;
  String get extra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponItemCopyWith<CouponItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponItemCopyWith<$Res> {
  factory $CouponItemCopyWith(
          CouponItem value, $Res Function(CouponItem) then) =
      _$CouponItemCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String code,
      DateTime expire,
      CouponUsedType usedType,
      bool isDone,
      CouponEffectType effectType,
      String extra});

  $CouponUsedTypeCopyWith<$Res> get usedType;
  $CouponEffectTypeCopyWith<$Res> get effectType;
}

/// @nodoc
class _$CouponItemCopyWithImpl<$Res> implements $CouponItemCopyWith<$Res> {
  _$CouponItemCopyWithImpl(this._value, this._then);

  final CouponItem _value;
  // ignore: unused_field
  final $Res Function(CouponItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? expire = freezed,
    Object? usedType = freezed,
    Object? isDone = freezed,
    Object? effectType = freezed,
    Object? extra = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      expire: expire == freezed
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usedType: usedType == freezed
          ? _value.usedType
          : usedType // ignore: cast_nullable_to_non_nullable
              as CouponUsedType,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      effectType: effectType == freezed
          ? _value.effectType
          : effectType // ignore: cast_nullable_to_non_nullable
              as CouponEffectType,
      extra: extra == freezed
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CouponUsedTypeCopyWith<$Res> get usedType {
    return $CouponUsedTypeCopyWith<$Res>(_value.usedType, (value) {
      return _then(_value.copyWith(usedType: value));
    });
  }

  @override
  $CouponEffectTypeCopyWith<$Res> get effectType {
    return $CouponEffectTypeCopyWith<$Res>(_value.effectType, (value) {
      return _then(_value.copyWith(effectType: value));
    });
  }
}

/// @nodoc
abstract class _$$_CouponItemCopyWith<$Res>
    implements $CouponItemCopyWith<$Res> {
  factory _$$_CouponItemCopyWith(
          _$_CouponItem value, $Res Function(_$_CouponItem) then) =
      __$$_CouponItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String code,
      DateTime expire,
      CouponUsedType usedType,
      bool isDone,
      CouponEffectType effectType,
      String extra});

  @override
  $CouponUsedTypeCopyWith<$Res> get usedType;
  @override
  $CouponEffectTypeCopyWith<$Res> get effectType;
}

/// @nodoc
class __$$_CouponItemCopyWithImpl<$Res> extends _$CouponItemCopyWithImpl<$Res>
    implements _$$_CouponItemCopyWith<$Res> {
  __$$_CouponItemCopyWithImpl(
      _$_CouponItem _value, $Res Function(_$_CouponItem) _then)
      : super(_value, (v) => _then(v as _$_CouponItem));

  @override
  _$_CouponItem get _value => super._value as _$_CouponItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? expire = freezed,
    Object? usedType = freezed,
    Object? isDone = freezed,
    Object? effectType = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$_CouponItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      expire: expire == freezed
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usedType: usedType == freezed
          ? _value.usedType
          : usedType // ignore: cast_nullable_to_non_nullable
              as CouponUsedType,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      effectType: effectType == freezed
          ? _value.effectType
          : effectType // ignore: cast_nullable_to_non_nullable
              as CouponEffectType,
      extra: extra == freezed
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CouponItem extends _CouponItem {
  const _$_CouponItem(
      {required this.name,
      required this.code,
      required this.expire,
      required this.usedType,
      required this.isDone,
      required this.effectType,
      required this.extra})
      : super._();

  factory _$_CouponItem.fromJson(Map<String, dynamic> json) =>
      _$$_CouponItemFromJson(json);

  @override
  final String name;
  @override
  final String code;
  @override
  final DateTime expire;
  @override
  final CouponUsedType usedType;
  @override
  final bool isDone;
  @override
  final CouponEffectType effectType;
  @override
  final String extra;

  @override
  String toString() {
    return 'CouponItem(name: $name, code: $code, expire: $expire, usedType: $usedType, isDone: $isDone, effectType: $effectType, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CouponItem &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.expire, expire) &&
            const DeepCollectionEquality().equals(other.usedType, usedType) &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality()
                .equals(other.effectType, effectType) &&
            const DeepCollectionEquality().equals(other.extra, extra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(expire),
      const DeepCollectionEquality().hash(usedType),
      const DeepCollectionEquality().hash(isDone),
      const DeepCollectionEquality().hash(effectType),
      const DeepCollectionEquality().hash(extra));

  @JsonKey(ignore: true)
  @override
  _$$_CouponItemCopyWith<_$_CouponItem> get copyWith =>
      __$$_CouponItemCopyWithImpl<_$_CouponItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponItemToJson(this);
  }
}

abstract class _CouponItem extends CouponItem {
  const factory _CouponItem(
      {required final String name,
      required final String code,
      required final DateTime expire,
      required final CouponUsedType usedType,
      required final bool isDone,
      required final CouponEffectType effectType,
      required final String extra}) = _$_CouponItem;
  const _CouponItem._() : super._();

  factory _CouponItem.fromJson(Map<String, dynamic> json) =
      _$_CouponItem.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  DateTime get expire;
  @override
  CouponUsedType get usedType;
  @override
  bool get isDone;
  @override
  CouponEffectType get effectType;
  @override
  String get extra;
  @override
  @JsonKey(ignore: true)
  _$$_CouponItemCopyWith<_$_CouponItem> get copyWith =>
      throw _privateConstructorUsedError;
}
