// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MemorizationEventTearOff {
  const _$MemorizationEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ShowSheet showSheet() {
    return const _ShowSheet();
  }
}

/// @nodoc
const $MemorizationEvent = _$MemorizationEventTearOff();

/// @nodoc
mixin _$MemorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() showSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ShowSheet value) showSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowSheet value)? showSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowSheet value)? showSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemorizationEventCopyWith<$Res> {
  factory $MemorizationEventCopyWith(
          MemorizationEvent value, $Res Function(MemorizationEvent) then) =
      _$MemorizationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MemorizationEventCopyWithImpl<$Res>
    implements $MemorizationEventCopyWith<$Res> {
  _$MemorizationEventCopyWithImpl(this._value, this._then);

  final MemorizationEvent _value;
  // ignore: unused_field
  final $Res Function(MemorizationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$MemorizationEventCopyWithImpl<$Res>
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
    return 'MemorizationEvent.started()';
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
    required TResult Function() showSheet,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showSheet,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showSheet,
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
    required TResult Function(_ShowSheet value) showSheet,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowSheet value)? showSheet,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowSheet value)? showSheet,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MemorizationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ShowSheetCopyWith<$Res> {
  factory _$ShowSheetCopyWith(
          _ShowSheet value, $Res Function(_ShowSheet) then) =
      __$ShowSheetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowSheetCopyWithImpl<$Res>
    extends _$MemorizationEventCopyWithImpl<$Res>
    implements _$ShowSheetCopyWith<$Res> {
  __$ShowSheetCopyWithImpl(_ShowSheet _value, $Res Function(_ShowSheet) _then)
      : super(_value, (v) => _then(v as _ShowSheet));

  @override
  _ShowSheet get _value => super._value as _ShowSheet;
}

/// @nodoc

class _$_ShowSheet implements _ShowSheet {
  const _$_ShowSheet();

  @override
  String toString() {
    return 'MemorizationEvent.showSheet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ShowSheet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() showSheet,
  }) {
    return showSheet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showSheet,
  }) {
    return showSheet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showSheet,
    required TResult orElse(),
  }) {
    if (showSheet != null) {
      return showSheet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ShowSheet value) showSheet,
  }) {
    return showSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowSheet value)? showSheet,
  }) {
    return showSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowSheet value)? showSheet,
    required TResult orElse(),
  }) {
    if (showSheet != null) {
      return showSheet(this);
    }
    return orElse();
  }
}

abstract class _ShowSheet implements MemorizationEvent {
  const factory _ShowSheet() = _$_ShowSheet;
}

/// @nodoc
class _$MemorizationStateTearOff {
  const _$MemorizationStateTearOff();

  _Initial initial({bool show = false}) {
    return _Initial(
      show: show,
    );
  }
}

/// @nodoc
const $MemorizationState = _$MemorizationStateTearOff();

/// @nodoc
mixin _$MemorizationState {
  bool get show => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool show) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool show)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemorizationStateCopyWith<MemorizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemorizationStateCopyWith<$Res> {
  factory $MemorizationStateCopyWith(
          MemorizationState value, $Res Function(MemorizationState) then) =
      _$MemorizationStateCopyWithImpl<$Res>;
  $Res call({bool show});
}

/// @nodoc
class _$MemorizationStateCopyWithImpl<$Res>
    implements $MemorizationStateCopyWith<$Res> {
  _$MemorizationStateCopyWithImpl(this._value, this._then);

  final MemorizationState _value;
  // ignore: unused_field
  final $Res Function(MemorizationState) _then;

  @override
  $Res call({
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $MemorizationStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool show});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MemorizationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? show = freezed,
  }) {
    return _then(_Initial(
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.show = false});

  @JsonKey(defaultValue: false)
  @override
  final bool show;

  @override
  String toString() {
    return 'MemorizationState.initial(show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.show, show) ||
                const DeepCollectionEquality().equals(other.show, show)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(show);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool show) initial,
  }) {
    return initial(show);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool show)? initial,
  }) {
    return initial?.call(show);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool show)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(show);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MemorizationState {
  const factory _Initial({bool show}) = _$_Initial;

  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
