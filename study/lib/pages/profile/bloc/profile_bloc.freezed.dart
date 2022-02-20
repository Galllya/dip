// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _Started started(List<String> uid, List<String> uidSub) {
    return _Started(
      uid,
      uidSub,
    );
  }

  _LogOut logOut() {
    return const _LogOut();
  }

  _Update update(AppUser appUser) {
    return _Update(
      appUser,
    );
  }

  _Load load(List<String> uid, List<String> uidSub) {
    return _Load(
      uid,
      uidSub,
    );
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> uid, List<String> uidSub) started,
    required TResult Function() logOut,
    required TResult Function(AppUser appUser) update,
    required TResult Function(List<String> uid, List<String> uidSub) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Update value) update,
    required TResult Function(_Load value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({List<String> uid, List<String> uidSub});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? uid = freezed,
    Object? uidSub = freezed,
  }) {
    return _then(_Started(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uidSub == freezed
          ? _value.uidSub
          : uidSub // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.uid, this.uidSub);

  @override
  final List<String> uid;
  @override
  final List<String> uidSub;

  @override
  String toString() {
    return 'ProfileEvent.started(uid: $uid, uidSub: $uidSub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.uidSub, uidSub) ||
                const DeepCollectionEquality().equals(other.uidSub, uidSub)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(uidSub);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> uid, List<String> uidSub) started,
    required TResult Function() logOut,
    required TResult Function(AppUser appUser) update,
    required TResult Function(List<String> uid, List<String> uidSub) load,
  }) {
    return started(uid, uidSub);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
  }) {
    return started?.call(uid, uidSub);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(uid, uidSub);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Update value) update,
    required TResult Function(_Load value) load,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started(List<String> uid, List<String> uidSub) = _$_Started;

  List<String> get uid => throw _privateConstructorUsedError;
  List<String> get uidSub => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogOutCopyWith<$Res> {
  factory _$LogOutCopyWith(_LogOut value, $Res Function(_LogOut) then) =
      __$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogOutCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$LogOutCopyWith<$Res> {
  __$LogOutCopyWithImpl(_LogOut _value, $Res Function(_LogOut) _then)
      : super(_value, (v) => _then(v as _LogOut));

  @override
  _LogOut get _value => super._value as _LogOut;
}

/// @nodoc

class _$_LogOut implements _LogOut {
  const _$_LogOut();

  @override
  String toString() {
    return 'ProfileEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> uid, List<String> uidSub) started,
    required TResult Function() logOut,
    required TResult Function(AppUser appUser) update,
    required TResult Function(List<String> uid, List<String> uidSub) load,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Update value) update,
    required TResult Function(_Load value) load,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements ProfileEvent {
  const factory _LogOut() = _$_LogOut;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({AppUser appUser});
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object? appUser = freezed,
  }) {
    return _then(_Update(
      appUser == freezed
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'ProfileEvent.update(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality().equals(other.appUser, appUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appUser);

  @JsonKey(ignore: true)
  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> uid, List<String> uidSub) started,
    required TResult Function() logOut,
    required TResult Function(AppUser appUser) update,
    required TResult Function(List<String> uid, List<String> uidSub) load,
  }) {
    return update(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
  }) {
    return update?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Update value) update,
    required TResult Function(_Load value) load,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements ProfileEvent {
  const factory _Update(AppUser appUser) = _$_Update;

  AppUser get appUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  $Res call({List<String> uid, List<String> uidSub});
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object? uid = freezed,
    Object? uidSub = freezed,
  }) {
    return _then(_Load(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uidSub == freezed
          ? _value.uidSub
          : uidSub // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load(this.uid, this.uidSub);

  @override
  final List<String> uid;
  @override
  final List<String> uidSub;

  @override
  String toString() {
    return 'ProfileEvent.load(uid: $uid, uidSub: $uidSub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Load &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.uidSub, uidSub) ||
                const DeepCollectionEquality().equals(other.uidSub, uidSub)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(uidSub);

  @JsonKey(ignore: true)
  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> uid, List<String> uidSub) started,
    required TResult Function() logOut,
    required TResult Function(AppUser appUser) update,
    required TResult Function(List<String> uid, List<String> uidSub) load,
  }) {
    return load(uid, uidSub);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
  }) {
    return load?.call(uid, uidSub);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> uid, List<String> uidSub)? started,
    TResult Function()? logOut,
    TResult Function(AppUser appUser)? update,
    TResult Function(List<String> uid, List<String> uidSub)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(uid, uidSub);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_Update value) update,
    required TResult Function(_Load value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_Update value)? update,
    TResult Function(_Load value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ProfileEvent {
  const factory _Load(List<String> uid, List<String> uidSub) = _$_Load;

  List<String> get uid => throw _privateConstructorUsedError;
  List<String> get uidSub => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadCopyWith<_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {List<AnotherUser>? users,
      List<AnotherUser>? usersSub,
      dynamic isLogOutProcess = false,
      bool? isLogOutSuccses,
      dynamic isUpdateProcess = false,
      bool? isUpdateSucces}) {
    return _Loaded(
      users: users,
      usersSub: usersSub,
      isLogOutProcess: isLogOutProcess,
      isLogOutSuccses: isLogOutSuccses,
      isUpdateProcess: isUpdateProcess,
      isUpdateSucces: isUpdateSucces,
    );
  }

  _Error error({String? error}) {
    return _Error(
      error: error,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)
        loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
        loaded,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
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
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
    return 'ProfileState.initial()';
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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)
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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
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

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
    return 'ProfileState.loading()';
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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)
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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
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

abstract class _Loading implements ProfileState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<AnotherUser>? users,
      List<AnotherUser>? usersSub,
      dynamic isLogOutProcess,
      bool? isLogOutSuccses,
      dynamic isUpdateProcess,
      bool? isUpdateSucces});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? users = freezed,
    Object? usersSub = freezed,
    Object? isLogOutProcess = freezed,
    Object? isLogOutSuccses = freezed,
    Object? isUpdateProcess = freezed,
    Object? isUpdateSucces = freezed,
  }) {
    return _then(_Loaded(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<AnotherUser>?,
      usersSub: usersSub == freezed
          ? _value.usersSub
          : usersSub // ignore: cast_nullable_to_non_nullable
              as List<AnotherUser>?,
      isLogOutProcess:
          isLogOutProcess == freezed ? _value.isLogOutProcess : isLogOutProcess,
      isLogOutSuccses: isLogOutSuccses == freezed
          ? _value.isLogOutSuccses
          : isLogOutSuccses // ignore: cast_nullable_to_non_nullable
              as bool?,
      isUpdateProcess:
          isUpdateProcess == freezed ? _value.isUpdateProcess : isUpdateProcess,
      isUpdateSucces: isUpdateSucces == freezed
          ? _value.isUpdateSucces
          : isUpdateSucces // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {this.users,
      this.usersSub,
      this.isLogOutProcess = false,
      this.isLogOutSuccses,
      this.isUpdateProcess = false,
      this.isUpdateSucces});

  @override
  final List<AnotherUser>? users;
  @override
  final List<AnotherUser>? usersSub;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isLogOutProcess;
  @override
  final bool? isLogOutSuccses;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isUpdateProcess;
  @override
  final bool? isUpdateSucces;

  @override
  String toString() {
    return 'ProfileState.loaded(users: $users, usersSub: $usersSub, isLogOutProcess: $isLogOutProcess, isLogOutSuccses: $isLogOutSuccses, isUpdateProcess: $isUpdateProcess, isUpdateSucces: $isUpdateSucces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.usersSub, usersSub) ||
                const DeepCollectionEquality()
                    .equals(other.usersSub, usersSub)) &&
            (identical(other.isLogOutProcess, isLogOutProcess) ||
                const DeepCollectionEquality()
                    .equals(other.isLogOutProcess, isLogOutProcess)) &&
            (identical(other.isLogOutSuccses, isLogOutSuccses) ||
                const DeepCollectionEquality()
                    .equals(other.isLogOutSuccses, isLogOutSuccses)) &&
            (identical(other.isUpdateProcess, isUpdateProcess) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdateProcess, isUpdateProcess)) &&
            (identical(other.isUpdateSucces, isUpdateSucces) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdateSucces, isUpdateSucces)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(usersSub) ^
      const DeepCollectionEquality().hash(isLogOutProcess) ^
      const DeepCollectionEquality().hash(isLogOutSuccses) ^
      const DeepCollectionEquality().hash(isUpdateProcess) ^
      const DeepCollectionEquality().hash(isUpdateSucces);

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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(users, usersSub, isLogOutProcess, isLogOutSuccses,
        isUpdateProcess, isUpdateSucces);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
        loaded,
    TResult Function(String? error)? error,
  }) {
    return loaded?.call(users, usersSub, isLogOutProcess, isLogOutSuccses,
        isUpdateProcess, isUpdateSucces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
        loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users, usersSub, isLogOutProcess, isLogOutSuccses,
          isUpdateProcess, isUpdateSucces);
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

abstract class _Loaded implements ProfileState {
  const factory _Loaded(
      {List<AnotherUser>? users,
      List<AnotherUser>? usersSub,
      dynamic isLogOutProcess,
      bool? isLogOutSuccses,
      dynamic isUpdateProcess,
      bool? isUpdateSucces}) = _$_Loaded;

  List<AnotherUser>? get users => throw _privateConstructorUsedError;
  List<AnotherUser>? get usersSub => throw _privateConstructorUsedError;
  dynamic get isLogOutProcess => throw _privateConstructorUsedError;
  bool? get isLogOutSuccses => throw _privateConstructorUsedError;
  dynamic get isUpdateProcess => throw _privateConstructorUsedError;
  bool? get isUpdateSucces => throw _privateConstructorUsedError;
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
class __$ErrorCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
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
    return 'ProfileState.error(error: $error)';
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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)
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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
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
            List<AnotherUser>? users,
            List<AnotherUser>? usersSub,
            dynamic isLogOutProcess,
            bool? isLogOutSuccses,
            dynamic isUpdateProcess,
            bool? isUpdateSucces)?
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

abstract class _Error implements ProfileState {
  const factory _Error({String? error}) = _$_Error;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
