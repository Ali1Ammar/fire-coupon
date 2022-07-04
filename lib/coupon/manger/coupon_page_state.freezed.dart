// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CouponPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)
        init,
    required TResult Function(Object? error, StackTrace? stackTrace) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)?
        init,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)?
        init,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponPageStateCopyWith<$Res> {
  factory $CouponPageStateCopyWith(
          CouponPageState value, $Res Function(CouponPageState) then) =
      _$CouponPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CouponPageStateCopyWithImpl<$Res>
    implements $CouponPageStateCopyWith<$Res> {
  _$CouponPageStateCopyWithImpl(this._value, this._then);

  final CouponPageState _value;
  // ignore: unused_field
  final $Res Function(CouponPageState) _then;
}

/// @nodoc
abstract class _$$InitStateCopyWith<$Res> {
  factory _$$InitStateCopyWith(
          _$InitState value, $Res Function(_$InitState) then) =
      __$$InitStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int countCoupon,
      int countUsed,
      int day,
      int week,
      DateTime expireCupon,
      CouponEffectTypeEnum couponEffectType,
      CouponUsedTypeEnum couponUsedTypeEnum});
}

/// @nodoc
class __$$InitStateCopyWithImpl<$Res>
    extends _$CouponPageStateCopyWithImpl<$Res>
    implements _$$InitStateCopyWith<$Res> {
  __$$InitStateCopyWithImpl(
      _$InitState _value, $Res Function(_$InitState) _then)
      : super(_value, (v) => _then(v as _$InitState));

  @override
  _$InitState get _value => super._value as _$InitState;

  @override
  $Res call({
    Object? name = freezed,
    Object? countCoupon = freezed,
    Object? countUsed = freezed,
    Object? day = freezed,
    Object? week = freezed,
    Object? expireCupon = freezed,
    Object? couponEffectType = freezed,
    Object? couponUsedTypeEnum = freezed,
  }) {
    return _then(_$InitState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countCoupon: countCoupon == freezed
          ? _value.countCoupon
          : countCoupon // ignore: cast_nullable_to_non_nullable
              as int,
      countUsed: countUsed == freezed
          ? _value.countUsed
          : countUsed // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      week: week == freezed
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int,
      expireCupon: expireCupon == freezed
          ? _value.expireCupon
          : expireCupon // ignore: cast_nullable_to_non_nullable
              as DateTime,
      couponEffectType: couponEffectType == freezed
          ? _value.couponEffectType
          : couponEffectType // ignore: cast_nullable_to_non_nullable
              as CouponEffectTypeEnum,
      couponUsedTypeEnum: couponUsedTypeEnum == freezed
          ? _value.couponUsedTypeEnum
          : couponUsedTypeEnum // ignore: cast_nullable_to_non_nullable
              as CouponUsedTypeEnum,
    ));
  }
}

/// @nodoc

class _$InitState implements InitState {
  const _$InitState(
      {required this.name,
      required this.countCoupon,
      required this.countUsed,
      required this.day,
      required this.week,
      required this.expireCupon,
      required this.couponEffectType,
      required this.couponUsedTypeEnum});

  @override
  final String name;
  @override
  final int countCoupon;
  @override
  final int countUsed;
  @override
  final int day;
  @override
  final int week;
  @override
  final DateTime expireCupon;
  @override
  final CouponEffectTypeEnum couponEffectType;
  @override
  final CouponUsedTypeEnum couponUsedTypeEnum;

  @override
  String toString() {
    return 'CouponPageState.init(name: $name, countCoupon: $countCoupon, countUsed: $countUsed, day: $day, week: $week, expireCupon: $expireCupon, couponEffectType: $couponEffectType, couponUsedTypeEnum: $couponUsedTypeEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.countCoupon, countCoupon) &&
            const DeepCollectionEquality().equals(other.countUsed, countUsed) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.week, week) &&
            const DeepCollectionEquality()
                .equals(other.expireCupon, expireCupon) &&
            const DeepCollectionEquality()
                .equals(other.couponEffectType, couponEffectType) &&
            const DeepCollectionEquality()
                .equals(other.couponUsedTypeEnum, couponUsedTypeEnum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(countCoupon),
      const DeepCollectionEquality().hash(countUsed),
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(week),
      const DeepCollectionEquality().hash(expireCupon),
      const DeepCollectionEquality().hash(couponEffectType),
      const DeepCollectionEquality().hash(couponUsedTypeEnum));

  @JsonKey(ignore: true)
  @override
  _$$InitStateCopyWith<_$InitState> get copyWith =>
      __$$InitStateCopyWithImpl<_$InitState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)
        init,
    required TResult Function(Object? error, StackTrace? stackTrace) error,
    required TResult Function() loading,
  }) {
    return init(name, countCoupon, countUsed, day, week, expireCupon,
        couponEffectType, couponUsedTypeEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)?
        init,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function()? loading,
  }) {
    return init?.call(name, countCoupon, countUsed, day, week, expireCupon,
        couponEffectType, couponUsedTypeEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)?
        init,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(name, countCoupon, countUsed, day, week, expireCupon,
          couponEffectType, couponUsedTypeEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadingState value) loading,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements CouponPageState {
  const factory InitState(
      {required final String name,
      required final int countCoupon,
      required final int countUsed,
      required final int day,
      required final int week,
      required final DateTime expireCupon,
      required final CouponEffectTypeEnum couponEffectType,
      required final CouponUsedTypeEnum couponUsedTypeEnum}) = _$InitState;

  String get name => throw _privateConstructorUsedError;
  int get countCoupon => throw _privateConstructorUsedError;
  int get countUsed => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  int get week => throw _privateConstructorUsedError;
  DateTime get expireCupon => throw _privateConstructorUsedError;
  CouponEffectTypeEnum get couponEffectType =>
      throw _privateConstructorUsedError;
  CouponUsedTypeEnum get couponUsedTypeEnum =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitStateCopyWith<_$InitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateCopyWith<$Res> {
  factory _$$ErrorStateCopyWith(
          _$ErrorState value, $Res Function(_$ErrorState) then) =
      __$$ErrorStateCopyWithImpl<$Res>;
  $Res call({Object? error, StackTrace? stackTrace});
}

/// @nodoc
class __$$ErrorStateCopyWithImpl<$Res>
    extends _$CouponPageStateCopyWithImpl<$Res>
    implements _$$ErrorStateCopyWith<$Res> {
  __$$ErrorStateCopyWithImpl(
      _$ErrorState _value, $Res Function(_$ErrorState) _then)
      : super(_value, (v) => _then(v as _$ErrorState));

  @override
  _$ErrorState get _value => super._value as _$ErrorState;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ErrorState(
      error == freezed ? _value.error : error,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  const _$ErrorState([this.error, this.stackTrace]);

  @override
  final Object? error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'CouponPageState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorState &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      __$$ErrorStateCopyWithImpl<_$ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)
        init,
    required TResult Function(Object? error, StackTrace? stackTrace) error,
    required TResult Function() loading,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)?
        init,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function()? loading,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)?
        init,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadingState value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements CouponPageState {
  const factory ErrorState(
      [final Object? error, final StackTrace? stackTrace]) = _$ErrorState;

  Object? get error => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ErrorStateCopyWith<_$ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$CouponPageStateCopyWithImpl<$Res>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, (v) => _then(v as _$LoadingState));

  @override
  _$LoadingState get _value => super._value as _$LoadingState;
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'CouponPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)
        init,
    required TResult Function(Object? error, StackTrace? stackTrace) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)?
        init,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            int countCoupon,
            int countUsed,
            int day,
            int week,
            DateTime expireCupon,
            CouponEffectTypeEnum couponEffectType,
            CouponUsedTypeEnum couponUsedTypeEnum)?
        init,
    TResult Function(Object? error, StackTrace? stackTrace)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(ErrorState value) error,
    required TResult Function(LoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(ErrorState value)? error,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements CouponPageState {
  const factory LoadingState() = _$LoadingState;
}
