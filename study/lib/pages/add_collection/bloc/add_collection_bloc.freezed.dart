// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_collection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddCollectionEventTearOff {
  const _$AddCollectionEventTearOff();

  _Started started() {
    return const _Started();
  }

  _PutCollection putCollection(Uint8List? file, Collection collection) {
    return _PutCollection(
      file,
      collection,
    );
  }

  _Make make() {
    return const _Make();
  }
}

/// @nodoc
const $AddCollectionEvent = _$AddCollectionEventTearOff();

/// @nodoc
mixin _$AddCollectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Uint8List? file, Collection collection)
        putCollection,
    required TResult Function() make,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Uint8List? file, Collection collection)? putCollection,
    TResult Function()? make,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Uint8List? file, Collection collection)? putCollection,
    TResult Function()? make,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PutCollection value) putCollection,
    required TResult Function(_Make value) make,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PutCollection value)? putCollection,
    TResult Function(_Make value)? make,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PutCollection value)? putCollection,
    TResult Function(_Make value)? make,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCollectionEventCopyWith<$Res> {
  factory $AddCollectionEventCopyWith(
          AddCollectionEvent value, $Res Function(AddCollectionEvent) then) =
      _$AddCollectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddCollectionEventCopyWithImpl<$Res>
    implements $AddCollectionEventCopyWith<$Res> {
  _$AddCollectionEventCopyWithImpl(this._value, this._then);

  final AddCollectionEvent _value;
  // ignore: unused_field
  final $Res Function(AddCollectionEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$AddCollectionEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AddCollectionEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Uint8List? file, Collection collection)
        putCollection,
    required TResult Function() make,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Uint8List? file, Collection collection)? putCollection,
    TResult Function()? make,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Uint8List? file, Collection collection)? putCollection,
    TResult Function()? make,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PutCollection value) putCollection,
    required TResult Function(_Make value) make,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PutCollection value)? putCollection,
    TResult Function(_Make value)? make,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PutCollection value)? putCollection,
    TResult Function(_Make value)? make,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddCollectionEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$PutCollectionCopyWith<$Res> {
  factory _$PutCollectionCopyWith(
          _PutCollection value, $Res Function(_PutCollection) then) =
      __$PutCollectionCopyWithImpl<$Res>;
  $Res call({Uint8List? file, Collection collection});
}

/// @nodoc
class __$PutCollectionCopyWithImpl<$Res>
    extends _$AddCollectionEventCopyWithImpl<$Res>
    implements _$PutCollectionCopyWith<$Res> {
  __$PutCollectionCopyWithImpl(
      _PutCollection _value, $Res Function(_PutCollection) _then)
      : super(_value, (v) => _then(v as _PutCollection));

  @override
  _PutCollection get _value => super._value as _PutCollection;

  @override
  $Res call({
    Object? file = freezed,
    Object? collection = freezed,
  }) {
    return _then(_PutCollection(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
    ));
  }
}

/// @nodoc

class _$_PutCollection implements _PutCollection {
  const _$_PutCollection(this.file, this.collection);

  @override
  final Uint8List? file;
  @override
  final Collection collection;

  @override
  String toString() {
    return 'AddCollectionEvent.putCollection(file: $file, collection: $collection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PutCollection &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.collection, collection) ||
                const DeepCollectionEquality()
                    .equals(other.collection, collection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(collection);

  @JsonKey(ignore: true)
  @override
  _$PutCollectionCopyWith<_PutCollection> get copyWith =>
      __$PutCollectionCopyWithImpl<_PutCollection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Uint8List? file, Collection collection)
        putCollection,
    required TResult Function() make,
  }) {
    return putCollection(file, collection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Uint8List? file, Collection collection)? putCollection,
    TResult Function()? make,
  }) {
    return putCollection?.call(file, collection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Uint8List? file, Collection collection)? putCollection,
    TResult Function()? make,
    required TResult orElse(),
  }) {
    if (putCollection != null) {
      return putCollection(file, collection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PutCollection value) putCollection,
    required TResult Function(_Make value) make,
  }) {
    return putCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PutCollection value)? putCollection,
    TResult Function(_Make value)? make,
  }) {
    return putCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PutCollection value)? putCollection,
    TResult Function(_Make value)? make,
    required TResult orElse(),
  }) {
    if (putCollection != null) {
      return putCollection(this);
    }
    return orElse();
  }
}

abstract class _PutCollection implements AddCollectionEvent {
  const factory _PutCollection(Uint8List? file, Collection collection) =
      _$_PutCollection;

  Uint8List? get file => throw _privateConstructorUsedError;
  Collection get collection => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PutCollectionCopyWith<_PutCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MakeCopyWith<$Res> {
  factory _$MakeCopyWith(_Make value, $Res Function(_Make) then) =
      __$MakeCopyWithImpl<$Res>;
}

/// @nodoc
class __$MakeCopyWithImpl<$Res> extends _$AddCollectionEventCopyWithImpl<$Res>
    implements _$MakeCopyWith<$Res> {
  __$MakeCopyWithImpl(_Make _value, $Res Function(_Make) _then)
      : super(_value, (v) => _then(v as _Make));

  @override
  _Make get _value => super._value as _Make;
}

/// @nodoc

class _$_Make implements _Make {
  const _$_Make();

  @override
  String toString() {
    return 'AddCollectionEvent.make()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Make);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Uint8List? file, Collection collection)
        putCollection,
    required TResult Function() make,
  }) {
    return make();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Uint8List? file, Collection collection)? putCollection,
    TResult Function()? make,
  }) {
    return make?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Uint8List? file, Collection collection)? putCollection,
    TResult Function()? make,
    required TResult orElse(),
  }) {
    if (make != null) {
      return make();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PutCollection value) putCollection,
    required TResult Function(_Make value) make,
  }) {
    return make(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PutCollection value)? putCollection,
    TResult Function(_Make value)? make,
  }) {
    return make?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PutCollection value)? putCollection,
    TResult Function(_Make value)? make,
    required TResult orElse(),
  }) {
    if (make != null) {
      return make(this);
    }
    return orElse();
  }
}

abstract class _Make implements AddCollectionEvent {
  const factory _Make() = _$_Make;
}

/// @nodoc
class _$AddCollectionStateTearOff {
  const _$AddCollectionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Success success() {
    return const _Success();
  }

  _Error error({String? error}) {
    return _Error(
      error: error,
    );
  }

  _Normal normal({bool shodStart = false}) {
    return _Normal(
      shodStart: shodStart,
    );
  }
}

/// @nodoc
const $AddCollectionState = _$AddCollectionStateTearOff();

/// @nodoc
mixin _$AddCollectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(bool shodStart) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_Normal value) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCollectionStateCopyWith<$Res> {
  factory $AddCollectionStateCopyWith(
          AddCollectionState value, $Res Function(AddCollectionState) then) =
      _$AddCollectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddCollectionStateCopyWithImpl<$Res>
    implements $AddCollectionStateCopyWith<$Res> {
  _$AddCollectionStateCopyWithImpl(this._value, this._then);

  final AddCollectionState _value;
  // ignore: unused_field
  final $Res Function(AddCollectionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AddCollectionStateCopyWithImpl<$Res>
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
    return 'AddCollectionState.initial()';
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
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(bool shodStart) normal,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_Normal value) normal,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddCollectionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$AddCollectionStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AddCollectionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(bool shodStart) normal,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_Normal value) normal,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddCollectionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$AddCollectionStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'AddCollectionState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(bool shodStart) normal,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_Normal value) normal,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AddCollectionState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$AddCollectionStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'AddCollectionState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(bool shodStart) normal,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_Normal value) normal,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AddCollectionState {
  const factory _Error({String? error}) = _$_Error;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NormalCopyWith<$Res> {
  factory _$NormalCopyWith(_Normal value, $Res Function(_Normal) then) =
      __$NormalCopyWithImpl<$Res>;
  $Res call({bool shodStart});
}

/// @nodoc
class __$NormalCopyWithImpl<$Res> extends _$AddCollectionStateCopyWithImpl<$Res>
    implements _$NormalCopyWith<$Res> {
  __$NormalCopyWithImpl(_Normal _value, $Res Function(_Normal) _then)
      : super(_value, (v) => _then(v as _Normal));

  @override
  _Normal get _value => super._value as _Normal;

  @override
  $Res call({
    Object? shodStart = freezed,
  }) {
    return _then(_Normal(
      shodStart: shodStart == freezed
          ? _value.shodStart
          : shodStart // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Normal implements _Normal {
  const _$_Normal({this.shodStart = false});

  @JsonKey(defaultValue: false)
  @override
  final bool shodStart;

  @override
  String toString() {
    return 'AddCollectionState.normal(shodStart: $shodStart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Normal &&
            (identical(other.shodStart, shodStart) ||
                const DeepCollectionEquality()
                    .equals(other.shodStart, shodStart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shodStart);

  @JsonKey(ignore: true)
  @override
  _$NormalCopyWith<_Normal> get copyWith =>
      __$NormalCopyWithImpl<_Normal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(bool shodStart) normal,
  }) {
    return normal(shodStart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
  }) {
    return normal?.call(shodStart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(bool shodStart)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(shodStart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_Normal value) normal,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class _Normal implements AddCollectionState {
  const factory _Normal({bool shodStart}) = _$_Normal;

  bool get shodStart => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NormalCopyWith<_Normal> get copyWith => throw _privateConstructorUsedError;
}
