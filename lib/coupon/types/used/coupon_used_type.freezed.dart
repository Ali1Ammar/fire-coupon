// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_used_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponUsedType _$CouponUsedTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'onTime':
      return OnTimeCoupon.fromJson(json);
    case 'untilExpire':
      return UntilExpireCoupon.fromJson(json);
    case 'countTime':
      return CountTimeCoupon.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'CouponUsedType',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$CouponUsedType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUsed) onTime,
    required TResult Function() untilExpire,
    required TResult Function(int count, List<String> ids) countTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isUsed)? onTime,
    TResult Function()? untilExpire,
    TResult Function(int count, List<String> ids)? countTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUsed)? onTime,
    TResult Function()? untilExpire,
    TResult Function(int count, List<String> ids)? countTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTimeCoupon value) onTime,
    required TResult Function(UntilExpireCoupon value) untilExpire,
    required TResult Function(CountTimeCoupon value) countTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnTimeCoupon value)? onTime,
    TResult Function(UntilExpireCoupon value)? untilExpire,
    TResult Function(CountTimeCoupon value)? countTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTimeCoupon value)? onTime,
    TResult Function(UntilExpireCoupon value)? untilExpire,
    TResult Function(CountTimeCoupon value)? countTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponUsedTypeCopyWith<$Res> {
  factory $CouponUsedTypeCopyWith(
          CouponUsedType value, $Res Function(CouponUsedType) then) =
      _$CouponUsedTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$CouponUsedTypeCopyWithImpl<$Res>
    implements $CouponUsedTypeCopyWith<$Res> {
  _$CouponUsedTypeCopyWithImpl(this._value, this._then);

  final CouponUsedType _value;
  // ignore: unused_field
  final $Res Function(CouponUsedType) _then;
}

/// @nodoc
abstract class _$$OnTimeCouponCopyWith<$Res> {
  factory _$$OnTimeCouponCopyWith(
          _$OnTimeCoupon value, $Res Function(_$OnTimeCoupon) then) =
      __$$OnTimeCouponCopyWithImpl<$Res>;
  $Res call({bool isUsed});
}

/// @nodoc
class __$$OnTimeCouponCopyWithImpl<$Res>
    extends _$CouponUsedTypeCopyWithImpl<$Res>
    implements _$$OnTimeCouponCopyWith<$Res> {
  __$$OnTimeCouponCopyWithImpl(
      _$OnTimeCoupon _value, $Res Function(_$OnTimeCoupon) _then)
      : super(_value, (v) => _then(v as _$OnTimeCoupon));

  @override
  _$OnTimeCoupon get _value => super._value as _$OnTimeCoupon;

  @override
  $Res call({
    Object? isUsed = freezed,
  }) {
    return _then(_$OnTimeCoupon(
      isUsed == freezed
          ? _value.isUsed
          : isUsed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnTimeCoupon extends OnTimeCoupon {
  const _$OnTimeCoupon(this.isUsed, {final String? $type})
      : $type = $type ?? 'onTime',
        super._();

  factory _$OnTimeCoupon.fromJson(Map<String, dynamic> json) =>
      _$$OnTimeCouponFromJson(json);

  @override
  final bool isUsed;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CouponUsedType.onTime(isUsed: $isUsed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTimeCoupon &&
            const DeepCollectionEquality().equals(other.isUsed, isUsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isUsed));

  @JsonKey(ignore: true)
  @override
  _$$OnTimeCouponCopyWith<_$OnTimeCoupon> get copyWith =>
      __$$OnTimeCouponCopyWithImpl<_$OnTimeCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUsed) onTime,
    required TResult Function() untilExpire,
    required TResult Function(int count, List<String> ids) countTime,
  }) {
    return onTime(isUsed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isUsed)? onTime,
    TResult Function()? untilExpire,
    TResult Function(int count, List<String> ids)? countTime,
  }) {
    return onTime?.call(isUsed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUsed)? onTime,
    TResult Function()? untilExpire,
    TResult Function(int count, List<String> ids)? countTime,
    required TResult orElse(),
  }) {
    if (onTime != null) {
      return onTime(isUsed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTimeCoupon value) onTime,
    required TResult Function(UntilExpireCoupon value) untilExpire,
    required TResult Function(CountTimeCoupon value) countTime,
  }) {
    return onTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnTimeCoupon value)? onTime,
    TResult Function(UntilExpireCoupon value)? untilExpire,
    TResult Function(CountTimeCoupon value)? countTime,
  }) {
    return onTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTimeCoupon value)? onTime,
    TResult Function(UntilExpireCoupon value)? untilExpire,
    TResult Function(CountTimeCoupon value)? countTime,
    required TResult orElse(),
  }) {
    if (onTime != null) {
      return onTime(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnTimeCouponToJson(this);
  }
}

abstract class OnTimeCoupon extends CouponUsedType {
  const factory OnTimeCoupon(final bool isUsed) = _$OnTimeCoupon;
  const OnTimeCoupon._() : super._();

  factory OnTimeCoupon.fromJson(Map<String, dynamic> json) =
      _$OnTimeCoupon.fromJson;

  bool get isUsed => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnTimeCouponCopyWith<_$OnTimeCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UntilExpireCouponCopyWith<$Res> {
  factory _$$UntilExpireCouponCopyWith(
          _$UntilExpireCoupon value, $Res Function(_$UntilExpireCoupon) then) =
      __$$UntilExpireCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UntilExpireCouponCopyWithImpl<$Res>
    extends _$CouponUsedTypeCopyWithImpl<$Res>
    implements _$$UntilExpireCouponCopyWith<$Res> {
  __$$UntilExpireCouponCopyWithImpl(
      _$UntilExpireCoupon _value, $Res Function(_$UntilExpireCoupon) _then)
      : super(_value, (v) => _then(v as _$UntilExpireCoupon));

  @override
  _$UntilExpireCoupon get _value => super._value as _$UntilExpireCoupon;
}

/// @nodoc
@JsonSerializable()
class _$UntilExpireCoupon extends UntilExpireCoupon {
  const _$UntilExpireCoupon({final String? $type})
      : $type = $type ?? 'untilExpire',
        super._();

  factory _$UntilExpireCoupon.fromJson(Map<String, dynamic> json) =>
      _$$UntilExpireCouponFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CouponUsedType.untilExpire()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UntilExpireCoupon);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUsed) onTime,
    required TResult Function() untilExpire,
    required TResult Function(int count, List<String> ids) countTime,
  }) {
    return untilExpire();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isUsed)? onTime,
    TResult Function()? untilExpire,
    TResult Function(int count, List<String> ids)? countTime,
  }) {
    return untilExpire?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUsed)? onTime,
    TResult Function()? untilExpire,
    TResult Function(int count, List<String> ids)? countTime,
    required TResult orElse(),
  }) {
    if (untilExpire != null) {
      return untilExpire();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTimeCoupon value) onTime,
    required TResult Function(UntilExpireCoupon value) untilExpire,
    required TResult Function(CountTimeCoupon value) countTime,
  }) {
    return untilExpire(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnTimeCoupon value)? onTime,
    TResult Function(UntilExpireCoupon value)? untilExpire,
    TResult Function(CountTimeCoupon value)? countTime,
  }) {
    return untilExpire?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTimeCoupon value)? onTime,
    TResult Function(UntilExpireCoupon value)? untilExpire,
    TResult Function(CountTimeCoupon value)? countTime,
    required TResult orElse(),
  }) {
    if (untilExpire != null) {
      return untilExpire(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UntilExpireCouponToJson(this);
  }
}

abstract class UntilExpireCoupon extends CouponUsedType {
  const factory UntilExpireCoupon() = _$UntilExpireCoupon;
  const UntilExpireCoupon._() : super._();

  factory UntilExpireCoupon.fromJson(Map<String, dynamic> json) =
      _$UntilExpireCoupon.fromJson;
}

/// @nodoc
abstract class _$$CountTimeCouponCopyWith<$Res> {
  factory _$$CountTimeCouponCopyWith(
          _$CountTimeCoupon value, $Res Function(_$CountTimeCoupon) then) =
      __$$CountTimeCouponCopyWithImpl<$Res>;
  $Res call({int count, List<String> ids});
}

/// @nodoc
class __$$CountTimeCouponCopyWithImpl<$Res>
    extends _$CouponUsedTypeCopyWithImpl<$Res>
    implements _$$CountTimeCouponCopyWith<$Res> {
  __$$CountTimeCouponCopyWithImpl(
      _$CountTimeCoupon _value, $Res Function(_$CountTimeCoupon) _then)
      : super(_value, (v) => _then(v as _$CountTimeCoupon));

  @override
  _$CountTimeCoupon get _value => super._value as _$CountTimeCoupon;

  @override
  $Res call({
    Object? count = freezed,
    Object? ids = freezed,
  }) {
    return _then(_$CountTimeCoupon(
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      ids == freezed
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountTimeCoupon extends CountTimeCoupon {
  const _$CountTimeCoupon(this.count, final List<String> ids,
      {final String? $type})
      : _ids = ids,
        $type = $type ?? 'countTime',
        super._();

  factory _$CountTimeCoupon.fromJson(Map<String, dynamic> json) =>
      _$$CountTimeCouponFromJson(json);

  @override
  final int count;
  final List<String> _ids;
  @override
  List<String> get ids {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CouponUsedType.countTime(count: $count, ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountTimeCoupon &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  _$$CountTimeCouponCopyWith<_$CountTimeCoupon> get copyWith =>
      __$$CountTimeCouponCopyWithImpl<_$CountTimeCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isUsed) onTime,
    required TResult Function() untilExpire,
    required TResult Function(int count, List<String> ids) countTime,
  }) {
    return countTime(count, ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isUsed)? onTime,
    TResult Function()? untilExpire,
    TResult Function(int count, List<String> ids)? countTime,
  }) {
    return countTime?.call(count, ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isUsed)? onTime,
    TResult Function()? untilExpire,
    TResult Function(int count, List<String> ids)? countTime,
    required TResult orElse(),
  }) {
    if (countTime != null) {
      return countTime(count, ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnTimeCoupon value) onTime,
    required TResult Function(UntilExpireCoupon value) untilExpire,
    required TResult Function(CountTimeCoupon value) countTime,
  }) {
    return countTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnTimeCoupon value)? onTime,
    TResult Function(UntilExpireCoupon value)? untilExpire,
    TResult Function(CountTimeCoupon value)? countTime,
  }) {
    return countTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnTimeCoupon value)? onTime,
    TResult Function(UntilExpireCoupon value)? untilExpire,
    TResult Function(CountTimeCoupon value)? countTime,
    required TResult orElse(),
  }) {
    if (countTime != null) {
      return countTime(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CountTimeCouponToJson(this);
  }
}

abstract class CountTimeCoupon extends CouponUsedType {
  const factory CountTimeCoupon(final int count, final List<String> ids) =
      _$CountTimeCoupon;
  const CountTimeCoupon._() : super._();

  factory CountTimeCoupon.fromJson(Map<String, dynamic> json) =
      _$CountTimeCoupon.fromJson;

  int get count => throw _privateConstructorUsedError;
  List<String> get ids => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CountTimeCouponCopyWith<_$CountTimeCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}
