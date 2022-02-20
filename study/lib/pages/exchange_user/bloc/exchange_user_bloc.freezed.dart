// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchange_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExchangeUserEventTearOff {
  const _$ExchangeUserEventTearOff();

  _Started started(String uid) {
    return _Started(
      uid,
    );
  }

  _Load load(String uid) {
    return _Load(
      uid,
    );
  }

  _Folow folow(bool isFollow, String anotherUserUID,
      List<String> anotherUserSubscribers, List<String> curUserSubscrip) {
    return _Folow(
      isFollow,
      anotherUserUID,
      anotherUserSubscribers,
      curUserSubscrip,
    );
  }
}

/// @nodoc
const $ExchangeUserEvent = _$ExchangeUserEventTearOff();

/// @nodoc
mixin _$ExchangeUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) started,
    required TResult Function(String uid) load,
    required TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)
        folow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? started,
    TResult Function(String uid)? load,
    TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)?
        folow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? started,
    TResult Function(String uid)? load,
    TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)?
        folow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_Folow value) folow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Folow value)? folow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Folow value)? folow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeUserEventCopyWith<$Res> {
  factory $ExchangeUserEventCopyWith(
          ExchangeUserEvent value, $Res Function(ExchangeUserEvent) then) =
      _$ExchangeUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExchangeUserEventCopyWithImpl<$Res>
    implements $ExchangeUserEventCopyWith<$Res> {
  _$ExchangeUserEventCopyWithImpl(this._value, this._then);

  final ExchangeUserEvent _value;
  // ignore: unused_field
  final $Res Function(ExchangeUserEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ExchangeUserEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_Started(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'ExchangeUserEvent.started(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) started,
    required TResult Function(String uid) load,
    required TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)
        folow,
  }) {
    return started(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? started,
    TResult Function(String uid)? load,
    TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)?
        folow,
  }) {
    return started?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? started,
    TResult Function(String uid)? load,
    TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)?
        folow,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_Folow value) folow,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Folow value)? folow,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Folow value)? folow,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExchangeUserEvent {
  const factory _Started(String uid) = _$_Started;

  String get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$ExchangeUserEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_Load(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'ExchangeUserEvent.load(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Load &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) started,
    required TResult Function(String uid) load,
    required TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)
        folow,
  }) {
    return load(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? started,
    TResult Function(String uid)? load,
    TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)?
        folow,
  }) {
    return load?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? started,
    TResult Function(String uid)? load,
    TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)?
        folow,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_Folow value) folow,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Folow value)? folow,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Folow value)? folow,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ExchangeUserEvent {
  const factory _Load(String uid) = _$_Load;

  String get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadCopyWith<_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FolowCopyWith<$Res> {
  factory _$FolowCopyWith(_Folow value, $Res Function(_Folow) then) =
      __$FolowCopyWithImpl<$Res>;
  $Res call(
      {bool isFollow,
      String anotherUserUID,
      List<String> anotherUserSubscribers,
      List<String> curUserSubscrip});
}

/// @nodoc
class __$FolowCopyWithImpl<$Res> extends _$ExchangeUserEventCopyWithImpl<$Res>
    implements _$FolowCopyWith<$Res> {
  __$FolowCopyWithImpl(_Folow _value, $Res Function(_Folow) _then)
      : super(_value, (v) => _then(v as _Folow));

  @override
  _Folow get _value => super._value as _Folow;

  @override
  $Res call({
    Object? isFollow = freezed,
    Object? anotherUserUID = freezed,
    Object? anotherUserSubscribers = freezed,
    Object? curUserSubscrip = freezed,
  }) {
    return _then(_Folow(
      isFollow == freezed
          ? _value.isFollow
          : isFollow // ignore: cast_nullable_to_non_nullable
              as bool,
      anotherUserUID == freezed
          ? _value.anotherUserUID
          : anotherUserUID // ignore: cast_nullable_to_non_nullable
              as String,
      anotherUserSubscribers == freezed
          ? _value.anotherUserSubscribers
          : anotherUserSubscribers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      curUserSubscrip == freezed
          ? _value.curUserSubscrip
          : curUserSubscrip // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Folow implements _Folow {
  const _$_Folow(this.isFollow, this.anotherUserUID,
      this.anotherUserSubscribers, this.curUserSubscrip);

  @override
  final bool isFollow;
  @override
  final String anotherUserUID;
  @override
  final List<String> anotherUserSubscribers;
  @override
  final List<String> curUserSubscrip;

  @override
  String toString() {
    return 'ExchangeUserEvent.folow(isFollow: $isFollow, anotherUserUID: $anotherUserUID, anotherUserSubscribers: $anotherUserSubscribers, curUserSubscrip: $curUserSubscrip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Folow &&
            (identical(other.isFollow, isFollow) ||
                const DeepCollectionEquality()
                    .equals(other.isFollow, isFollow)) &&
            (identical(other.anotherUserUID, anotherUserUID) ||
                const DeepCollectionEquality()
                    .equals(other.anotherUserUID, anotherUserUID)) &&
            (identical(other.anotherUserSubscribers, anotherUserSubscribers) ||
                const DeepCollectionEquality().equals(
                    other.anotherUserSubscribers, anotherUserSubscribers)) &&
            (identical(other.curUserSubscrip, curUserSubscrip) ||
                const DeepCollectionEquality()
                    .equals(other.curUserSubscrip, curUserSubscrip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFollow) ^
      const DeepCollectionEquality().hash(anotherUserUID) ^
      const DeepCollectionEquality().hash(anotherUserSubscribers) ^
      const DeepCollectionEquality().hash(curUserSubscrip);

  @JsonKey(ignore: true)
  @override
  _$FolowCopyWith<_Folow> get copyWith =>
      __$FolowCopyWithImpl<_Folow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) started,
    required TResult Function(String uid) load,
    required TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)
        folow,
  }) {
    return folow(
        isFollow, anotherUserUID, anotherUserSubscribers, curUserSubscrip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String uid)? started,
    TResult Function(String uid)? load,
    TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)?
        folow,
  }) {
    return folow?.call(
        isFollow, anotherUserUID, anotherUserSubscribers, curUserSubscrip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? started,
    TResult Function(String uid)? load,
    TResult Function(bool isFollow, String anotherUserUID,
            List<String> anotherUserSubscribers, List<String> curUserSubscrip)?
        folow,
    required TResult orElse(),
  }) {
    if (folow != null) {
      return folow(
          isFollow, anotherUserUID, anotherUserSubscribers, curUserSubscrip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_Folow value) folow,
  }) {
    return folow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Folow value)? folow,
  }) {
    return folow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_Folow value)? folow,
    required TResult orElse(),
  }) {
    if (folow != null) {
      return folow(this);
    }
    return orElse();
  }
}

abstract class _Folow implements ExchangeUserEvent {
  const factory _Folow(
      bool isFollow,
      String anotherUserUID,
      List<String> anotherUserSubscribers,
      List<String> curUserSubscrip) = _$_Folow;

  bool get isFollow => throw _privateConstructorUsedError;
  String get anotherUserUID => throw _privateConstructorUsedError;
  List<String> get anotherUserSubscribers => throw _privateConstructorUsedError;
  List<String> get curUserSubscrip => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FolowCopyWith<_Folow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExchangeUserStateTearOff {
  const _$ExchangeUserStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {required List<AnotherUser> asers,
      required AppUser user,
      required List<ColodaAll> colodas,
      bool idFollowingProccess = false,
      bool? isFollowSuccess}) {
    return _Loaded(
      asers: asers,
      user: user,
      colodas: colodas,
      idFollowingProccess: idFollowingProccess,
      isFollowSuccess: isFollowSuccess,
    );
  }

  _Error error({String? error}) {
    return _Error(
      error: error,
    );
  }
}

/// @nodoc
const $ExchangeUserState = _$ExchangeUserStateTearOff();

/// @nodoc
mixin _$ExchangeUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)
        loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
        loaded,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
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
abstract class $ExchangeUserStateCopyWith<$Res> {
  factory $ExchangeUserStateCopyWith(
          ExchangeUserState value, $Res Function(ExchangeUserState) then) =
      _$ExchangeUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExchangeUserStateCopyWithImpl<$Res>
    implements $ExchangeUserStateCopyWith<$Res> {
  _$ExchangeUserStateCopyWithImpl(this._value, this._then);

  final ExchangeUserState _value;
  // ignore: unused_field
  final $Res Function(ExchangeUserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ExchangeUserStateCopyWithImpl<$Res>
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
    return 'ExchangeUserState.initial()';
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
    required TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)
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
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
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
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
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

abstract class _Initial implements ExchangeUserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ExchangeUserStateCopyWithImpl<$Res>
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
    return 'ExchangeUserState.loading()';
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
    required TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)
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
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
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
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
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

abstract class _Loading implements ExchangeUserState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<AnotherUser> asers,
      AppUser user,
      List<ColodaAll> colodas,
      bool idFollowingProccess,
      bool? isFollowSuccess});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ExchangeUserStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? asers = freezed,
    Object? user = freezed,
    Object? colodas = freezed,
    Object? idFollowingProccess = freezed,
    Object? isFollowSuccess = freezed,
  }) {
    return _then(_Loaded(
      asers: asers == freezed
          ? _value.asers
          : asers // ignore: cast_nullable_to_non_nullable
              as List<AnotherUser>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      colodas: colodas == freezed
          ? _value.colodas
          : colodas // ignore: cast_nullable_to_non_nullable
              as List<ColodaAll>,
      idFollowingProccess: idFollowingProccess == freezed
          ? _value.idFollowingProccess
          : idFollowingProccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowSuccess: isFollowSuccess == freezed
          ? _value.isFollowSuccess
          : isFollowSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.asers,
      required this.user,
      required this.colodas,
      this.idFollowingProccess = false,
      this.isFollowSuccess});

  @override
  final List<AnotherUser> asers;
  @override
  final AppUser user;
  @override
  final List<ColodaAll> colodas;
  @JsonKey(defaultValue: false)
  @override
  final bool idFollowingProccess;
  @override
  final bool? isFollowSuccess;

  @override
  String toString() {
    return 'ExchangeUserState.loaded(asers: $asers, user: $user, colodas: $colodas, idFollowingProccess: $idFollowingProccess, isFollowSuccess: $isFollowSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.asers, asers) ||
                const DeepCollectionEquality().equals(other.asers, asers)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.colodas, colodas) ||
                const DeepCollectionEquality()
                    .equals(other.colodas, colodas)) &&
            (identical(other.idFollowingProccess, idFollowingProccess) ||
                const DeepCollectionEquality()
                    .equals(other.idFollowingProccess, idFollowingProccess)) &&
            (identical(other.isFollowSuccess, isFollowSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowSuccess, isFollowSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(asers) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(colodas) ^
      const DeepCollectionEquality().hash(idFollowingProccess) ^
      const DeepCollectionEquality().hash(isFollowSuccess);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(asers, user, colodas, idFollowingProccess, isFollowSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
        loaded,
    TResult Function(String? error)? error,
  }) {
    return loaded?.call(
        asers, user, colodas, idFollowingProccess, isFollowSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
        loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(asers, user, colodas, idFollowingProccess, isFollowSuccess);
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

abstract class _Loaded implements ExchangeUserState {
  const factory _Loaded(
      {required List<AnotherUser> asers,
      required AppUser user,
      required List<ColodaAll> colodas,
      bool idFollowingProccess,
      bool? isFollowSuccess}) = _$_Loaded;

  List<AnotherUser> get asers => throw _privateConstructorUsedError;
  AppUser get user => throw _privateConstructorUsedError;
  List<ColodaAll> get colodas => throw _privateConstructorUsedError;
  bool get idFollowingProccess => throw _privateConstructorUsedError;
  bool? get isFollowSuccess => throw _privateConstructorUsedError;
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
class __$ErrorCopyWithImpl<$Res> extends _$ExchangeUserStateCopyWithImpl<$Res>
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
    return 'ExchangeUserState.error(error: $error)';
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
    required TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)
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
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
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
    TResult Function(
            List<AnotherUser> asers,
            AppUser user,
            List<ColodaAll> colodas,
            bool idFollowingProccess,
            bool? isFollowSuccess)?
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

abstract class _Error implements ExchangeUserState {
  const factory _Error({String? error}) = _$_Error;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
