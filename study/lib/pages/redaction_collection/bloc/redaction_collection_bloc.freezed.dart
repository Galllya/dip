// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'redaction_collection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RedactionCollectionEventTearOff {
  const _$RedactionCollectionEventTearOff();

  _Started started(List<String> colodsId) {
    return _Started(
      colodsId,
    );
  }

  _Update update(Collection collection, Uint8List? file) {
    return _Update(
      collection,
      file,
    );
  }

  _BeginUpdate beginUpdate() {
    return const _BeginUpdate();
  }
}

/// @nodoc
const $RedactionCollectionEvent = _$RedactionCollectionEventTearOff();

/// @nodoc
mixin _$RedactionCollectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> colodsId) started,
    required TResult Function(Collection collection, Uint8List? file) update,
    required TResult Function() beginUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> colodsId)? started,
    TResult Function(Collection collection, Uint8List? file)? update,
    TResult Function()? beginUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> colodsId)? started,
    TResult Function(Collection collection, Uint8List? file)? update,
    TResult Function()? beginUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
    required TResult Function(_BeginUpdate value) beginUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    TResult Function(_BeginUpdate value)? beginUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    TResult Function(_BeginUpdate value)? beginUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedactionCollectionEventCopyWith<$Res> {
  factory $RedactionCollectionEventCopyWith(RedactionCollectionEvent value,
          $Res Function(RedactionCollectionEvent) then) =
      _$RedactionCollectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RedactionCollectionEventCopyWithImpl<$Res>
    implements $RedactionCollectionEventCopyWith<$Res> {
  _$RedactionCollectionEventCopyWithImpl(this._value, this._then);

  final RedactionCollectionEvent _value;
  // ignore: unused_field
  final $Res Function(RedactionCollectionEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({List<String> colodsId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$RedactionCollectionEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? colodsId = freezed,
  }) {
    return _then(_Started(
      colodsId == freezed
          ? _value.colodsId
          : colodsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.colodsId);

  @override
  final List<String> colodsId;

  @override
  String toString() {
    return 'RedactionCollectionEvent.started(colodsId: $colodsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.colodsId, colodsId) ||
                const DeepCollectionEquality()
                    .equals(other.colodsId, colodsId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(colodsId);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> colodsId) started,
    required TResult Function(Collection collection, Uint8List? file) update,
    required TResult Function() beginUpdate,
  }) {
    return started(colodsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> colodsId)? started,
    TResult Function(Collection collection, Uint8List? file)? update,
    TResult Function()? beginUpdate,
  }) {
    return started?.call(colodsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> colodsId)? started,
    TResult Function(Collection collection, Uint8List? file)? update,
    TResult Function()? beginUpdate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(colodsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
    required TResult Function(_BeginUpdate value) beginUpdate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    TResult Function(_BeginUpdate value)? beginUpdate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    TResult Function(_BeginUpdate value)? beginUpdate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RedactionCollectionEvent {
  const factory _Started(List<String> colodsId) = _$_Started;

  List<String> get colodsId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({Collection collection, Uint8List? file});
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res>
    extends _$RedactionCollectionEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object? collection = freezed,
    Object? file = freezed,
  }) {
    return _then(_Update(
      collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.collection, this.file);

  @override
  final Collection collection;
  @override
  final Uint8List? file;

  @override
  String toString() {
    return 'RedactionCollectionEvent.update(collection: $collection, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.collection, collection) ||
                const DeepCollectionEquality()
                    .equals(other.collection, collection)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(collection) ^
      const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> colodsId) started,
    required TResult Function(Collection collection, Uint8List? file) update,
    required TResult Function() beginUpdate,
  }) {
    return update(collection, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> colodsId)? started,
    TResult Function(Collection collection, Uint8List? file)? update,
    TResult Function()? beginUpdate,
  }) {
    return update?.call(collection, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> colodsId)? started,
    TResult Function(Collection collection, Uint8List? file)? update,
    TResult Function()? beginUpdate,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(collection, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
    required TResult Function(_BeginUpdate value) beginUpdate,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    TResult Function(_BeginUpdate value)? beginUpdate,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    TResult Function(_BeginUpdate value)? beginUpdate,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements RedactionCollectionEvent {
  const factory _Update(Collection collection, Uint8List? file) = _$_Update;

  Collection get collection => throw _privateConstructorUsedError;
  Uint8List? get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BeginUpdateCopyWith<$Res> {
  factory _$BeginUpdateCopyWith(
          _BeginUpdate value, $Res Function(_BeginUpdate) then) =
      __$BeginUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$BeginUpdateCopyWithImpl<$Res>
    extends _$RedactionCollectionEventCopyWithImpl<$Res>
    implements _$BeginUpdateCopyWith<$Res> {
  __$BeginUpdateCopyWithImpl(
      _BeginUpdate _value, $Res Function(_BeginUpdate) _then)
      : super(_value, (v) => _then(v as _BeginUpdate));

  @override
  _BeginUpdate get _value => super._value as _BeginUpdate;
}

/// @nodoc

class _$_BeginUpdate implements _BeginUpdate {
  const _$_BeginUpdate();

  @override
  String toString() {
    return 'RedactionCollectionEvent.beginUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BeginUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> colodsId) started,
    required TResult Function(Collection collection, Uint8List? file) update,
    required TResult Function() beginUpdate,
  }) {
    return beginUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> colodsId)? started,
    TResult Function(Collection collection, Uint8List? file)? update,
    TResult Function()? beginUpdate,
  }) {
    return beginUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> colodsId)? started,
    TResult Function(Collection collection, Uint8List? file)? update,
    TResult Function()? beginUpdate,
    required TResult orElse(),
  }) {
    if (beginUpdate != null) {
      return beginUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
    required TResult Function(_BeginUpdate value) beginUpdate,
  }) {
    return beginUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    TResult Function(_BeginUpdate value)? beginUpdate,
  }) {
    return beginUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    TResult Function(_BeginUpdate value)? beginUpdate,
    required TResult orElse(),
  }) {
    if (beginUpdate != null) {
      return beginUpdate(this);
    }
    return orElse();
  }
}

abstract class _BeginUpdate implements RedactionCollectionEvent {
  const factory _BeginUpdate() = _$_BeginUpdate;
}

/// @nodoc
class _$RedactionCollectionStateTearOff {
  const _$RedactionCollectionStateTearOff();

  _Initial initial({bool beginUpdate = false}) {
    return _Initial(
      beginUpdate: beginUpdate,
    );
  }

  _Loaded loaded({List<Coloda>? colods}) {
    return _Loaded(
      colods: colods,
    );
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

  _LoadingError loadingError({String? error}) {
    return _LoadingError(
      error: error,
    );
  }
}

/// @nodoc
const $RedactionCollectionState = _$RedactionCollectionStateTearOff();

/// @nodoc
mixin _$RedactionCollectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool beginUpdate) initial,
    required TResult Function(List<Coloda>? colods) loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(String? error) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadingError value) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedactionCollectionStateCopyWith<$Res> {
  factory $RedactionCollectionStateCopyWith(RedactionCollectionState value,
          $Res Function(RedactionCollectionState) then) =
      _$RedactionCollectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RedactionCollectionStateCopyWithImpl<$Res>
    implements $RedactionCollectionStateCopyWith<$Res> {
  _$RedactionCollectionStateCopyWithImpl(this._value, this._then);

  final RedactionCollectionState _value;
  // ignore: unused_field
  final $Res Function(RedactionCollectionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({bool beginUpdate});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$RedactionCollectionStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? beginUpdate = freezed,
  }) {
    return _then(_Initial(
      beginUpdate: beginUpdate == freezed
          ? _value.beginUpdate
          : beginUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.beginUpdate = false});

  @JsonKey(defaultValue: false)
  @override
  final bool beginUpdate;

  @override
  String toString() {
    return 'RedactionCollectionState.initial(beginUpdate: $beginUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.beginUpdate, beginUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.beginUpdate, beginUpdate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(beginUpdate);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool beginUpdate) initial,
    required TResult Function(List<Coloda>? colods) loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(String? error) loadingError,
  }) {
    return initial(beginUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
  }) {
    return initial?.call(beginUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(beginUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadingError value) loadingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RedactionCollectionState {
  const factory _Initial({bool beginUpdate}) = _$_Initial;

  bool get beginUpdate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Coloda>? colods});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$RedactionCollectionStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? colods = freezed,
  }) {
    return _then(_Loaded(
      colods: colods == freezed
          ? _value.colods
          : colods // ignore: cast_nullable_to_non_nullable
              as List<Coloda>?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({this.colods});

  @override
  final List<Coloda>? colods;

  @override
  String toString() {
    return 'RedactionCollectionState.loaded(colods: $colods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.colods, colods) ||
                const DeepCollectionEquality().equals(other.colods, colods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(colods);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool beginUpdate) initial,
    required TResult Function(List<Coloda>? colods) loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(String? error) loadingError,
  }) {
    return loaded(colods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
  }) {
    return loaded?.call(colods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(colods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadingError value) loadingError,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RedactionCollectionState {
  const factory _Loaded({List<Coloda>? colods}) = _$_Loaded;

  List<Coloda>? get colods => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$RedactionCollectionStateCopyWithImpl<$Res>
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
    return 'RedactionCollectionState.loading()';
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
    required TResult Function(bool beginUpdate) initial,
    required TResult Function(List<Coloda>? colods) loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(String? error) loadingError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadingError value) loadingError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RedactionCollectionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$RedactionCollectionStateCopyWithImpl<$Res>
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
    return 'RedactionCollectionState.success()';
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
    required TResult Function(bool beginUpdate) initial,
    required TResult Function(List<Coloda>? colods) loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(String? error) loadingError,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadingError value) loadingError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RedactionCollectionState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    extends _$RedactionCollectionStateCopyWithImpl<$Res>
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
    return 'RedactionCollectionState.error(error: $error)';
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
    required TResult Function(bool beginUpdate) initial,
    required TResult Function(List<Coloda>? colods) loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(String? error) loadingError,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadingError value) loadingError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RedactionCollectionState {
  const factory _Error({String? error}) = _$_Error;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingErrorCopyWith<$Res> {
  factory _$LoadingErrorCopyWith(
          _LoadingError value, $Res Function(_LoadingError) then) =
      __$LoadingErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$LoadingErrorCopyWithImpl<$Res>
    extends _$RedactionCollectionStateCopyWithImpl<$Res>
    implements _$LoadingErrorCopyWith<$Res> {
  __$LoadingErrorCopyWithImpl(
      _LoadingError _value, $Res Function(_LoadingError) _then)
      : super(_value, (v) => _then(v as _LoadingError));

  @override
  _LoadingError get _value => super._value as _LoadingError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_LoadingError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoadingError implements _LoadingError {
  const _$_LoadingError({this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'RedactionCollectionState.loadingError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LoadingErrorCopyWith<_LoadingError> get copyWith =>
      __$LoadingErrorCopyWithImpl<_LoadingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool beginUpdate) initial,
    required TResult Function(List<Coloda>? colods) loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String? error) error,
    required TResult Function(String? error) loadingError,
  }) {
    return loadingError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
  }) {
    return loadingError?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool beginUpdate)? initial,
    TResult Function(List<Coloda>? colods)? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String? error)? error,
    TResult Function(String? error)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_LoadingError value) loadingError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class _LoadingError implements RedactionCollectionState {
  const factory _LoadingError({String? error}) = _$_LoadingError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadingErrorCopyWith<_LoadingError> get copyWith =>
      throw _privateConstructorUsedError;
}
