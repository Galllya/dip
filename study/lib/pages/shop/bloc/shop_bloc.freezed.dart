// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopEventTearOff {
  const _$ShopEventTearOff();

  _Started started({required int points, required List<bool> buied}) {
    return _Started(
      points: points,
      buied: buied,
    );
  }

  _Buy buy({required int minusPoints, required int index}) {
    return _Buy(
      minusPoints: minusPoints,
      index: index,
    );
  }

  _Back back() {
    return const _Back();
  }
}

/// @nodoc
const $ShopEvent = _$ShopEventTearOff();

/// @nodoc
mixin _$ShopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, List<bool> buied) started,
    required TResult Function(int minusPoints, int index) buy,
    required TResult Function() back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, List<bool> buied)? started,
    TResult Function(int minusPoints, int index)? buy,
    TResult Function()? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, List<bool> buied)? started,
    TResult Function(int minusPoints, int index)? buy,
    TResult Function()? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Buy value) buy,
    required TResult Function(_Back value) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Buy value)? buy,
    TResult Function(_Back value)? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Buy value)? buy,
    TResult Function(_Back value)? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventCopyWith<$Res> {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) =
      _$ShopEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res> implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  final ShopEvent _value;
  // ignore: unused_field
  final $Res Function(ShopEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({int points, List<bool> buied});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? points = freezed,
    Object? buied = freezed,
  }) {
    return _then(_Started(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      buied: buied == freezed
          ? _value.buied
          : buied // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.points, required this.buied});

  @override
  final int points;
  @override
  final List<bool> buied;

  @override
  String toString() {
    return 'ShopEvent.started(points: $points, buied: $buied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.buied, buied) ||
                const DeepCollectionEquality().equals(other.buied, buied)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(buied);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, List<bool> buied) started,
    required TResult Function(int minusPoints, int index) buy,
    required TResult Function() back,
  }) {
    return started(points, buied);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, List<bool> buied)? started,
    TResult Function(int minusPoints, int index)? buy,
    TResult Function()? back,
  }) {
    return started?.call(points, buied);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, List<bool> buied)? started,
    TResult Function(int minusPoints, int index)? buy,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(points, buied);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Buy value) buy,
    required TResult Function(_Back value) back,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Buy value)? buy,
    TResult Function(_Back value)? back,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Buy value)? buy,
    TResult Function(_Back value)? back,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ShopEvent {
  const factory _Started({required int points, required List<bool> buied}) =
      _$_Started;

  int get points => throw _privateConstructorUsedError;
  List<bool> get buied => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BuyCopyWith<$Res> {
  factory _$BuyCopyWith(_Buy value, $Res Function(_Buy) then) =
      __$BuyCopyWithImpl<$Res>;
  $Res call({int minusPoints, int index});
}

/// @nodoc
class __$BuyCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res>
    implements _$BuyCopyWith<$Res> {
  __$BuyCopyWithImpl(_Buy _value, $Res Function(_Buy) _then)
      : super(_value, (v) => _then(v as _Buy));

  @override
  _Buy get _value => super._value as _Buy;

  @override
  $Res call({
    Object? minusPoints = freezed,
    Object? index = freezed,
  }) {
    return _then(_Buy(
      minusPoints: minusPoints == freezed
          ? _value.minusPoints
          : minusPoints // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Buy implements _Buy {
  const _$_Buy({required this.minusPoints, required this.index});

  @override
  final int minusPoints;
  @override
  final int index;

  @override
  String toString() {
    return 'ShopEvent.buy(minusPoints: $minusPoints, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Buy &&
            (identical(other.minusPoints, minusPoints) ||
                const DeepCollectionEquality()
                    .equals(other.minusPoints, minusPoints)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(minusPoints) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$BuyCopyWith<_Buy> get copyWith =>
      __$BuyCopyWithImpl<_Buy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, List<bool> buied) started,
    required TResult Function(int minusPoints, int index) buy,
    required TResult Function() back,
  }) {
    return buy(minusPoints, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, List<bool> buied)? started,
    TResult Function(int minusPoints, int index)? buy,
    TResult Function()? back,
  }) {
    return buy?.call(minusPoints, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, List<bool> buied)? started,
    TResult Function(int minusPoints, int index)? buy,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (buy != null) {
      return buy(minusPoints, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Buy value) buy,
    required TResult Function(_Back value) back,
  }) {
    return buy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Buy value)? buy,
    TResult Function(_Back value)? back,
  }) {
    return buy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Buy value)? buy,
    TResult Function(_Back value)? back,
    required TResult orElse(),
  }) {
    if (buy != null) {
      return buy(this);
    }
    return orElse();
  }
}

abstract class _Buy implements ShopEvent {
  const factory _Buy({required int minusPoints, required int index}) = _$_Buy;

  int get minusPoints => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BuyCopyWith<_Buy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BackCopyWith<$Res> {
  factory _$BackCopyWith(_Back value, $Res Function(_Back) then) =
      __$BackCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackCopyWithImpl<$Res> extends _$ShopEventCopyWithImpl<$Res>
    implements _$BackCopyWith<$Res> {
  __$BackCopyWithImpl(_Back _value, $Res Function(_Back) _then)
      : super(_value, (v) => _then(v as _Back));

  @override
  _Back get _value => super._value as _Back;
}

/// @nodoc

class _$_Back implements _Back {
  const _$_Back();

  @override
  String toString() {
    return 'ShopEvent.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Back);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, List<bool> buied) started,
    required TResult Function(int minusPoints, int index) buy,
    required TResult Function() back,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, List<bool> buied)? started,
    TResult Function(int minusPoints, int index)? buy,
    TResult Function()? back,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, List<bool> buied)? started,
    TResult Function(int minusPoints, int index)? buy,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Buy value) buy,
    required TResult Function(_Back value) back,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Buy value)? buy,
    TResult Function(_Back value)? back,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Buy value)? buy,
    TResult Function(_Back value)? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class _Back implements ShopEvent {
  const factory _Back() = _$_Back;
}

/// @nodoc
class _$ShopStateTearOff {
  const _$ShopStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Load load({int? points, List<bool>? buied}) {
    return _Load(
      points: points,
      buied: buied,
    );
  }
}

/// @nodoc
const $ShopState = _$ShopStateTearOff();

/// @nodoc
mixin _$ShopState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? points, List<bool>? buied) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? points, List<bool>? buied)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? points, List<bool>? buied)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res> implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  final ShopState _value;
  // ignore: unused_field
  final $Res Function(ShopState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ShopState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? points, List<bool>? buied) load,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? points, List<bool>? buied)? load,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? points, List<bool>? buied)? load,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ShopState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  $Res call({int? points, List<bool>? buied});
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$ShopStateCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object? points = freezed,
    Object? buied = freezed,
  }) {
    return _then(_Load(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      buied: buied == freezed
          ? _value.buied
          : buied // ignore: cast_nullable_to_non_nullable
              as List<bool>?,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load({this.points, this.buied});

  @override
  final int? points;
  @override
  final List<bool>? buied;

  @override
  String toString() {
    return 'ShopState.load(points: $points, buied: $buied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Load &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.buied, buied) ||
                const DeepCollectionEquality().equals(other.buied, buied)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(buied);

  @JsonKey(ignore: true)
  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? points, List<bool>? buied) load,
  }) {
    return load(points, buied);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? points, List<bool>? buied)? load,
  }) {
    return load?.call(points, buied);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? points, List<bool>? buied)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(points, buied);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Load value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ShopState {
  const factory _Load({int? points, List<bool>? buied}) = _$_Load;

  int? get points => throw _privateConstructorUsedError;
  List<bool>? get buied => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadCopyWith<_Load> get copyWith => throw _privateConstructorUsedError;
}
