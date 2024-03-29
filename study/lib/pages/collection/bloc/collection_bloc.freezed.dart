// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CollectionEventTearOff {
  const _$CollectionEventTearOff();

  _Started started(String id) {
    return _Started(
      id,
    );
  }

  _Load load(String collectionId) {
    return _Load(
      collectionId,
    );
  }

  _DeleteColoda deleteColoda(String docId) {
    return _DeleteColoda(
      docId,
    );
  }
}

/// @nodoc
const $CollectionEvent = _$CollectionEventTearOff();

/// @nodoc
mixin _$CollectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String collectionId) load,
    required TResult Function(String docId) deleteColoda,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String collectionId)? load,
    TResult Function(String docId)? deleteColoda,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String collectionId)? load,
    TResult Function(String docId)? deleteColoda,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionEventCopyWith<$Res> {
  factory $CollectionEventCopyWith(
          CollectionEvent value, $Res Function(CollectionEvent) then) =
      _$CollectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollectionEventCopyWithImpl<$Res>
    implements $CollectionEventCopyWith<$Res> {
  _$CollectionEventCopyWithImpl(this._value, this._then);

  final CollectionEvent _value;
  // ignore: unused_field
  final $Res Function(CollectionEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CollectionEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Started(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CollectionEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String collectionId) load,
    required TResult Function(String docId) deleteColoda,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String collectionId)? load,
    TResult Function(String docId)? deleteColoda,
  }) {
    return started?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String collectionId)? load,
    TResult Function(String docId)? deleteColoda,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CollectionEvent {
  const factory _Started(String id) = _$_Started;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  $Res call({String collectionId});
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$CollectionEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object? collectionId = freezed,
  }) {
    return _then(_Load(
      collectionId == freezed
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load(this.collectionId);

  @override
  final String collectionId;

  @override
  String toString() {
    return 'CollectionEvent.load(collectionId: $collectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Load &&
            (identical(other.collectionId, collectionId) ||
                const DeepCollectionEquality()
                    .equals(other.collectionId, collectionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(collectionId);

  @JsonKey(ignore: true)
  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String collectionId) load,
    required TResult Function(String docId) deleteColoda,
  }) {
    return load(collectionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String collectionId)? load,
    TResult Function(String docId)? deleteColoda,
  }) {
    return load?.call(collectionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String collectionId)? load,
    TResult Function(String docId)? deleteColoda,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(collectionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements CollectionEvent {
  const factory _Load(String collectionId) = _$_Load;

  String get collectionId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadCopyWith<_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteColodaCopyWith<$Res> {
  factory _$DeleteColodaCopyWith(
          _DeleteColoda value, $Res Function(_DeleteColoda) then) =
      __$DeleteColodaCopyWithImpl<$Res>;
  $Res call({String docId});
}

/// @nodoc
class __$DeleteColodaCopyWithImpl<$Res>
    extends _$CollectionEventCopyWithImpl<$Res>
    implements _$DeleteColodaCopyWith<$Res> {
  __$DeleteColodaCopyWithImpl(
      _DeleteColoda _value, $Res Function(_DeleteColoda) _then)
      : super(_value, (v) => _then(v as _DeleteColoda));

  @override
  _DeleteColoda get _value => super._value as _DeleteColoda;

  @override
  $Res call({
    Object? docId = freezed,
  }) {
    return _then(_DeleteColoda(
      docId == freezed
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteColoda implements _DeleteColoda {
  const _$_DeleteColoda(this.docId);

  @override
  final String docId;

  @override
  String toString() {
    return 'CollectionEvent.deleteColoda(docId: $docId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteColoda &&
            (identical(other.docId, docId) ||
                const DeepCollectionEquality().equals(other.docId, docId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(docId);

  @JsonKey(ignore: true)
  @override
  _$DeleteColodaCopyWith<_DeleteColoda> get copyWith =>
      __$DeleteColodaCopyWithImpl<_DeleteColoda>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
    required TResult Function(String collectionId) load,
    required TResult Function(String docId) deleteColoda,
  }) {
    return deleteColoda(docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String collectionId)? load,
    TResult Function(String docId)? deleteColoda,
  }) {
    return deleteColoda?.call(docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    TResult Function(String collectionId)? load,
    TResult Function(String docId)? deleteColoda,
    required TResult orElse(),
  }) {
    if (deleteColoda != null) {
      return deleteColoda(docId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) {
    return deleteColoda(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) {
    return deleteColoda?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) {
    if (deleteColoda != null) {
      return deleteColoda(this);
    }
    return orElse();
  }
}

abstract class _DeleteColoda implements CollectionEvent {
  const factory _DeleteColoda(String docId) = _$_DeleteColoda;

  String get docId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteColodaCopyWith<_DeleteColoda> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CollectionStateTearOff {
  const _$CollectionStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {required Collection collection,
      List<Coloda>? colods,
      bool isDeleteProccess = false,
      bool? isDeleteSuccess}) {
    return _Loaded(
      collection: collection,
      colods: colods,
      isDeleteProccess: isDeleteProccess,
      isDeleteSuccess: isDeleteSuccess,
    );
  }

  _Error error({String? error}) {
    return _Error(
      error: error,
    );
  }
}

/// @nodoc
const $CollectionState = _$CollectionStateTearOff();

/// @nodoc
mixin _$CollectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)
        loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionStateCopyWith<$Res> {
  factory $CollectionStateCopyWith(
          CollectionState value, $Res Function(CollectionState) then) =
      _$CollectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollectionStateCopyWithImpl<$Res>
    implements $CollectionStateCopyWith<$Res> {
  _$CollectionStateCopyWithImpl(this._value, this._then);

  final CollectionState _value;
  // ignore: unused_field
  final $Res Function(CollectionState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CollectionStateCopyWithImpl<$Res>
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
    return 'CollectionState.initial()';
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
    required TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CollectionState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$CollectionStateCopyWithImpl<$Res>
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
    return 'CollectionState.loading()';
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
    required TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CollectionState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {Collection collection,
      List<Coloda>? colods,
      bool isDeleteProccess,
      bool? isDeleteSuccess});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$CollectionStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? collection = freezed,
    Object? colods = freezed,
    Object? isDeleteProccess = freezed,
    Object? isDeleteSuccess = freezed,
  }) {
    return _then(_Loaded(
      collection: collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection,
      colods: colods == freezed
          ? _value.colods
          : colods // ignore: cast_nullable_to_non_nullable
              as List<Coloda>?,
      isDeleteProccess: isDeleteProccess == freezed
          ? _value.isDeleteProccess
          : isDeleteProccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteSuccess: isDeleteSuccess == freezed
          ? _value.isDeleteSuccess
          : isDeleteSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.collection,
      this.colods,
      this.isDeleteProccess = false,
      this.isDeleteSuccess});

  @override
  final Collection collection;
  @override
  final List<Coloda>? colods;
  @JsonKey(defaultValue: false)
  @override
  final bool isDeleteProccess;
  @override
  final bool? isDeleteSuccess;

  @override
  String toString() {
    return 'CollectionState.loaded(collection: $collection, colods: $colods, isDeleteProccess: $isDeleteProccess, isDeleteSuccess: $isDeleteSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.collection, collection) ||
                const DeepCollectionEquality()
                    .equals(other.collection, collection)) &&
            (identical(other.colods, colods) ||
                const DeepCollectionEquality().equals(other.colods, colods)) &&
            (identical(other.isDeleteProccess, isDeleteProccess) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleteProccess, isDeleteProccess)) &&
            (identical(other.isDeleteSuccess, isDeleteSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleteSuccess, isDeleteSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(collection) ^
      const DeepCollectionEquality().hash(colods) ^
      const DeepCollectionEquality().hash(isDeleteProccess) ^
      const DeepCollectionEquality().hash(isDeleteSuccess);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(collection, colods, isDeleteProccess, isDeleteSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
  }) {
    return loaded?.call(collection, colods, isDeleteProccess, isDeleteSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(collection, colods, isDeleteProccess, isDeleteSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CollectionState {
  const factory _Loaded(
      {required Collection collection,
      List<Coloda>? colods,
      bool isDeleteProccess,
      bool? isDeleteSuccess}) = _$_Loaded;

  Collection get collection => throw _privateConstructorUsedError;
  List<Coloda>? get colods => throw _privateConstructorUsedError;
  bool get isDeleteProccess => throw _privateConstructorUsedError;
  bool? get isDeleteSuccess => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CollectionStateCopyWithImpl<$Res>
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
    return 'CollectionState.error(error: $error)';
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
    required TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Collection collection, List<Coloda>? colods,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CollectionState {
  const factory _Error({String? error}) = _$_Error;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
