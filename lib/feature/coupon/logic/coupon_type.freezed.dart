// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponType _$CouponTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'removeAdsUntilDate':
      return CouponRemoveAdUntilDate.fromJson(json);
    case 'removeAdsForDuration':
      return CouponRemoveAdForDuration.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'CouponType', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$CouponType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) removeAdsUntilDate,
    required TResult Function(Duration duration) removeAdsForDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? removeAdsUntilDate,
    TResult Function(Duration duration)? removeAdsForDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? removeAdsUntilDate,
    TResult Function(Duration duration)? removeAdsForDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CouponRemoveAdUntilDate value) removeAdsUntilDate,
    required TResult Function(CouponRemoveAdForDuration value)
        removeAdsForDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CouponRemoveAdUntilDate value)? removeAdsUntilDate,
    TResult Function(CouponRemoveAdForDuration value)? removeAdsForDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CouponRemoveAdUntilDate value)? removeAdsUntilDate,
    TResult Function(CouponRemoveAdForDuration value)? removeAdsForDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponTypeCopyWith<$Res> {
  factory $CouponTypeCopyWith(
          CouponType value, $Res Function(CouponType) then) =
      _$CouponTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$CouponTypeCopyWithImpl<$Res> implements $CouponTypeCopyWith<$Res> {
  _$CouponTypeCopyWithImpl(this._value, this._then);

  final CouponType _value;
  // ignore: unused_field
  final $Res Function(CouponType) _then;
}

/// @nodoc
abstract class _$$CouponRemoveAdUntilDateCopyWith<$Res> {
  factory _$$CouponRemoveAdUntilDateCopyWith(_$CouponRemoveAdUntilDate value,
          $Res Function(_$CouponRemoveAdUntilDate) then) =
      __$$CouponRemoveAdUntilDateCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$$CouponRemoveAdUntilDateCopyWithImpl<$Res>
    extends _$CouponTypeCopyWithImpl<$Res>
    implements _$$CouponRemoveAdUntilDateCopyWith<$Res> {
  __$$CouponRemoveAdUntilDateCopyWithImpl(_$CouponRemoveAdUntilDate _value,
      $Res Function(_$CouponRemoveAdUntilDate) _then)
      : super(_value, (v) => _then(v as _$CouponRemoveAdUntilDate));

  @override
  _$CouponRemoveAdUntilDate get _value =>
      super._value as _$CouponRemoveAdUntilDate;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$CouponRemoveAdUntilDate(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponRemoveAdUntilDate implements CouponRemoveAdUntilDate {
  const _$CouponRemoveAdUntilDate(this.date, {final String? $type})
      : $type = $type ?? 'removeAdsUntilDate';

  factory _$CouponRemoveAdUntilDate.fromJson(Map<String, dynamic> json) =>
      _$$CouponRemoveAdUntilDateFromJson(json);

  @override
  final DateTime date;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CouponType.removeAdsUntilDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponRemoveAdUntilDate &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$CouponRemoveAdUntilDateCopyWith<_$CouponRemoveAdUntilDate> get copyWith =>
      __$$CouponRemoveAdUntilDateCopyWithImpl<_$CouponRemoveAdUntilDate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) removeAdsUntilDate,
    required TResult Function(Duration duration) removeAdsForDuration,
  }) {
    return removeAdsUntilDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? removeAdsUntilDate,
    TResult Function(Duration duration)? removeAdsForDuration,
  }) {
    return removeAdsUntilDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? removeAdsUntilDate,
    TResult Function(Duration duration)? removeAdsForDuration,
    required TResult orElse(),
  }) {
    if (removeAdsUntilDate != null) {
      return removeAdsUntilDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CouponRemoveAdUntilDate value) removeAdsUntilDate,
    required TResult Function(CouponRemoveAdForDuration value)
        removeAdsForDuration,
  }) {
    return removeAdsUntilDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CouponRemoveAdUntilDate value)? removeAdsUntilDate,
    TResult Function(CouponRemoveAdForDuration value)? removeAdsForDuration,
  }) {
    return removeAdsUntilDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CouponRemoveAdUntilDate value)? removeAdsUntilDate,
    TResult Function(CouponRemoveAdForDuration value)? removeAdsForDuration,
    required TResult orElse(),
  }) {
    if (removeAdsUntilDate != null) {
      return removeAdsUntilDate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponRemoveAdUntilDateToJson(this);
  }
}

abstract class CouponRemoveAdUntilDate implements CouponType {
  const factory CouponRemoveAdUntilDate(final DateTime date) =
      _$CouponRemoveAdUntilDate;

  factory CouponRemoveAdUntilDate.fromJson(Map<String, dynamic> json) =
      _$CouponRemoveAdUntilDate.fromJson;

  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CouponRemoveAdUntilDateCopyWith<_$CouponRemoveAdUntilDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CouponRemoveAdForDurationCopyWith<$Res> {
  factory _$$CouponRemoveAdForDurationCopyWith(
          _$CouponRemoveAdForDuration value,
          $Res Function(_$CouponRemoveAdForDuration) then) =
      __$$CouponRemoveAdForDurationCopyWithImpl<$Res>;
  $Res call({Duration duration});
}

/// @nodoc
class __$$CouponRemoveAdForDurationCopyWithImpl<$Res>
    extends _$CouponTypeCopyWithImpl<$Res>
    implements _$$CouponRemoveAdForDurationCopyWith<$Res> {
  __$$CouponRemoveAdForDurationCopyWithImpl(_$CouponRemoveAdForDuration _value,
      $Res Function(_$CouponRemoveAdForDuration) _then)
      : super(_value, (v) => _then(v as _$CouponRemoveAdForDuration));

  @override
  _$CouponRemoveAdForDuration get _value =>
      super._value as _$CouponRemoveAdForDuration;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$CouponRemoveAdForDuration(
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponRemoveAdForDuration implements CouponRemoveAdForDuration {
  const _$CouponRemoveAdForDuration(this.duration, {final String? $type})
      : $type = $type ?? 'removeAdsForDuration';

  factory _$CouponRemoveAdForDuration.fromJson(Map<String, dynamic> json) =>
      _$$CouponRemoveAdForDurationFromJson(json);

  @override
  final Duration duration;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CouponType.removeAdsForDuration(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponRemoveAdForDuration &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$CouponRemoveAdForDurationCopyWith<_$CouponRemoveAdForDuration>
      get copyWith => __$$CouponRemoveAdForDurationCopyWithImpl<
          _$CouponRemoveAdForDuration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) removeAdsUntilDate,
    required TResult Function(Duration duration) removeAdsForDuration,
  }) {
    return removeAdsForDuration(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime date)? removeAdsUntilDate,
    TResult Function(Duration duration)? removeAdsForDuration,
  }) {
    return removeAdsForDuration?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? removeAdsUntilDate,
    TResult Function(Duration duration)? removeAdsForDuration,
    required TResult orElse(),
  }) {
    if (removeAdsForDuration != null) {
      return removeAdsForDuration(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CouponRemoveAdUntilDate value) removeAdsUntilDate,
    required TResult Function(CouponRemoveAdForDuration value)
        removeAdsForDuration,
  }) {
    return removeAdsForDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CouponRemoveAdUntilDate value)? removeAdsUntilDate,
    TResult Function(CouponRemoveAdForDuration value)? removeAdsForDuration,
  }) {
    return removeAdsForDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CouponRemoveAdUntilDate value)? removeAdsUntilDate,
    TResult Function(CouponRemoveAdForDuration value)? removeAdsForDuration,
    required TResult orElse(),
  }) {
    if (removeAdsForDuration != null) {
      return removeAdsForDuration(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponRemoveAdForDurationToJson(this);
  }
}

abstract class CouponRemoveAdForDuration implements CouponType {
  const factory CouponRemoveAdForDuration(final Duration duration) =
      _$CouponRemoveAdForDuration;

  factory CouponRemoveAdForDuration.fromJson(Map<String, dynamic> json) =
      _$CouponRemoveAdForDuration.fromJson;

  Duration get duration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CouponRemoveAdForDurationCopyWith<_$CouponRemoveAdForDuration>
      get copyWith => throw _privateConstructorUsedError;
}
