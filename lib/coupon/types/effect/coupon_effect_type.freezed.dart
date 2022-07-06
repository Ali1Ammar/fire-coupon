// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_effect_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponEffectType _$CouponEffectTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'untilDate':
      return UntilDate.fromJson(json);
    case 'forDuration':
      return ForDuration.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'CouponEffectType',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$CouponEffectType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) untilDate,
    required TResult Function(Duration duration) forDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? untilDate,
    TResult Function(Duration duration)? forDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? untilDate,
    TResult Function(Duration duration)? forDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UntilDate value) untilDate,
    required TResult Function(ForDuration value) forDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UntilDate value)? untilDate,
    TResult Function(ForDuration value)? forDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UntilDate value)? untilDate,
    TResult Function(ForDuration value)? forDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponEffectTypeCopyWith<$Res> {
  factory $CouponEffectTypeCopyWith(
          CouponEffectType value, $Res Function(CouponEffectType) then) =
      _$CouponEffectTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$CouponEffectTypeCopyWithImpl<$Res>
    implements $CouponEffectTypeCopyWith<$Res> {
  _$CouponEffectTypeCopyWithImpl(this._value, this._then);

  final CouponEffectType _value;
  // ignore: unused_field
  final $Res Function(CouponEffectType) _then;
}

/// @nodoc
abstract class _$$UntilDateCopyWith<$Res> {
  factory _$$UntilDateCopyWith(
          _$UntilDate value, $Res Function(_$UntilDate) then) =
      __$$UntilDateCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$$UntilDateCopyWithImpl<$Res>
    extends _$CouponEffectTypeCopyWithImpl<$Res>
    implements _$$UntilDateCopyWith<$Res> {
  __$$UntilDateCopyWithImpl(
      _$UntilDate _value, $Res Function(_$UntilDate) _then)
      : super(_value, (v) => _then(v as _$UntilDate));

  @override
  _$UntilDate get _value => super._value as _$UntilDate;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$UntilDate(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UntilDate extends UntilDate {
  const _$UntilDate(this.date, {final String? $type})
      : $type = $type ?? 'untilDate',
        super._();

  factory _$UntilDate.fromJson(Map<String, dynamic> json) =>
      _$$UntilDateFromJson(json);

  @override
  final DateTime date;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CouponEffectType.untilDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UntilDate &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$UntilDateCopyWith<_$UntilDate> get copyWith =>
      __$$UntilDateCopyWithImpl<_$UntilDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) untilDate,
    required TResult Function(Duration duration) forDuration,
  }) {
    return untilDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? untilDate,
    TResult Function(Duration duration)? forDuration,
  }) {
    return untilDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? untilDate,
    TResult Function(Duration duration)? forDuration,
    required TResult orElse(),
  }) {
    if (untilDate != null) {
      return untilDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UntilDate value) untilDate,
    required TResult Function(ForDuration value) forDuration,
  }) {
    return untilDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UntilDate value)? untilDate,
    TResult Function(ForDuration value)? forDuration,
  }) {
    return untilDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UntilDate value)? untilDate,
    TResult Function(ForDuration value)? forDuration,
    required TResult orElse(),
  }) {
    if (untilDate != null) {
      return untilDate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UntilDateToJson(this);
  }
}

abstract class UntilDate extends CouponEffectType {
  const factory UntilDate(final DateTime date) = _$UntilDate;
  const UntilDate._() : super._();

  factory UntilDate.fromJson(Map<String, dynamic> json) = _$UntilDate.fromJson;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$UntilDateCopyWith<_$UntilDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForDurationCopyWith<$Res> {
  factory _$$ForDurationCopyWith(
          _$ForDuration value, $Res Function(_$ForDuration) then) =
      __$$ForDurationCopyWithImpl<$Res>;
  $Res call({Duration duration});
}

/// @nodoc
class __$$ForDurationCopyWithImpl<$Res>
    extends _$CouponEffectTypeCopyWithImpl<$Res>
    implements _$$ForDurationCopyWith<$Res> {
  __$$ForDurationCopyWithImpl(
      _$ForDuration _value, $Res Function(_$ForDuration) _then)
      : super(_value, (v) => _then(v as _$ForDuration));

  @override
  _$ForDuration get _value => super._value as _$ForDuration;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$ForDuration(
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForDuration extends ForDuration {
  const _$ForDuration(this.duration, {final String? $type})
      : $type = $type ?? 'forDuration',
        super._();

  factory _$ForDuration.fromJson(Map<String, dynamic> json) =>
      _$$ForDurationFromJson(json);

  @override
  final Duration duration;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CouponEffectType.forDuration(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForDuration &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$ForDurationCopyWith<_$ForDuration> get copyWith =>
      __$$ForDurationCopyWithImpl<_$ForDuration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) untilDate,
    required TResult Function(Duration duration) forDuration,
  }) {
    return forDuration(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? untilDate,
    TResult Function(Duration duration)? forDuration,
  }) {
    return forDuration?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? untilDate,
    TResult Function(Duration duration)? forDuration,
    required TResult orElse(),
  }) {
    if (forDuration != null) {
      return forDuration(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UntilDate value) untilDate,
    required TResult Function(ForDuration value) forDuration,
  }) {
    return forDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UntilDate value)? untilDate,
    TResult Function(ForDuration value)? forDuration,
  }) {
    return forDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UntilDate value)? untilDate,
    TResult Function(ForDuration value)? forDuration,
    required TResult orElse(),
  }) {
    if (forDuration != null) {
      return forDuration(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ForDurationToJson(this);
  }
}

abstract class ForDuration extends CouponEffectType {
  const factory ForDuration(final Duration duration) = _$ForDuration;
  const ForDuration._() : super._();

  factory ForDuration.fromJson(Map<String, dynamic> json) =
      _$ForDuration.fromJson;

  Duration get duration;
  @JsonKey(ignore: true)
  _$$ForDurationCopyWith<_$ForDuration> get copyWith =>
      throw _privateConstructorUsedError;
}
