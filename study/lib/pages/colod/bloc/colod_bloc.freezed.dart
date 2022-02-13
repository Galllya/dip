// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'colod_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ColodEventTearOff {
  const _$ColodEventTearOff();

  _Started started(String colodaId) {
    return _Started(
      colodaId,
    );
  }

  _Load load(String colodaId) {
    return _Load(
      colodaId,
    );
  }

  _UpdateColoda updateColoda(
      String? name,
      String? description,
      List<Card>? cards,
      String? imageURL,
      bool? showEvery,
      bool? takeMyHaveAuthour,
      List<String>? tags,
      String uid,
      DateTime? dateNow) {
    return _UpdateColoda(
      name,
      description,
      cards,
      imageURL,
      showEvery,
      takeMyHaveAuthour,
      tags,
      uid,
      dateNow,
    );
  }

  _LoadAfterUpdate loadAfterUpdate(String colodaId) {
    return _LoadAfterUpdate(
      colodaId,
    );
  }

  _DeleteColoda deleteColoda(String docId) {
    return _DeleteColoda(
      docId,
    );
  }
}

/// @nodoc
const $ColodEvent = _$ColodEventTearOff();

/// @nodoc
mixin _$ColodEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String colodaId) started,
    required TResult Function(String colodaId) load,
    required TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)
        updateColoda,
    required TResult Function(String colodaId) loadAfterUpdate,
    required TResult Function(String docId) deleteColoda,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateColoda value) updateColoda,
    required TResult Function(_LoadAfterUpdate value) loadAfterUpdate,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColodEventCopyWith<$Res> {
  factory $ColodEventCopyWith(
          ColodEvent value, $Res Function(ColodEvent) then) =
      _$ColodEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ColodEventCopyWithImpl<$Res> implements $ColodEventCopyWith<$Res> {
  _$ColodEventCopyWithImpl(this._value, this._then);

  final ColodEvent _value;
  // ignore: unused_field
  final $Res Function(ColodEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String colodaId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ColodEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? colodaId = freezed,
  }) {
    return _then(_Started(
      colodaId == freezed
          ? _value.colodaId
          : colodaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.colodaId);

  @override
  final String colodaId;

  @override
  String toString() {
    return 'ColodEvent.started(colodaId: $colodaId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.colodaId, colodaId) ||
                const DeepCollectionEquality()
                    .equals(other.colodaId, colodaId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(colodaId);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String colodaId) started,
    required TResult Function(String colodaId) load,
    required TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)
        updateColoda,
    required TResult Function(String colodaId) loadAfterUpdate,
    required TResult Function(String docId) deleteColoda,
  }) {
    return started(colodaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
  }) {
    return started?.call(colodaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(colodaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateColoda value) updateColoda,
    required TResult Function(_LoadAfterUpdate value) loadAfterUpdate,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ColodEvent {
  const factory _Started(String colodaId) = _$_Started;

  String get colodaId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  $Res call({String colodaId});
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$ColodEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object? colodaId = freezed,
  }) {
    return _then(_Load(
      colodaId == freezed
          ? _value.colodaId
          : colodaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load(this.colodaId);

  @override
  final String colodaId;

  @override
  String toString() {
    return 'ColodEvent.load(colodaId: $colodaId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Load &&
            (identical(other.colodaId, colodaId) ||
                const DeepCollectionEquality()
                    .equals(other.colodaId, colodaId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(colodaId);

  @JsonKey(ignore: true)
  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String colodaId) started,
    required TResult Function(String colodaId) load,
    required TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)
        updateColoda,
    required TResult Function(String colodaId) loadAfterUpdate,
    required TResult Function(String docId) deleteColoda,
  }) {
    return load(colodaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
  }) {
    return load?.call(colodaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(colodaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateColoda value) updateColoda,
    required TResult Function(_LoadAfterUpdate value) loadAfterUpdate,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements ColodEvent {
  const factory _Load(String colodaId) = _$_Load;

  String get colodaId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadCopyWith<_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateColodaCopyWith<$Res> {
  factory _$UpdateColodaCopyWith(
          _UpdateColoda value, $Res Function(_UpdateColoda) then) =
      __$UpdateColodaCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String? description,
      List<Card>? cards,
      String? imageURL,
      bool? showEvery,
      bool? takeMyHaveAuthour,
      List<String>? tags,
      String uid,
      DateTime? dateNow});
}

/// @nodoc
class __$UpdateColodaCopyWithImpl<$Res> extends _$ColodEventCopyWithImpl<$Res>
    implements _$UpdateColodaCopyWith<$Res> {
  __$UpdateColodaCopyWithImpl(
      _UpdateColoda _value, $Res Function(_UpdateColoda) _then)
      : super(_value, (v) => _then(v as _UpdateColoda));

  @override
  _UpdateColoda get _value => super._value as _UpdateColoda;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? cards = freezed,
    Object? imageURL = freezed,
    Object? showEvery = freezed,
    Object? takeMyHaveAuthour = freezed,
    Object? tags = freezed,
    Object? uid = freezed,
    Object? dateNow = freezed,
  }) {
    return _then(_UpdateColoda(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>?,
      imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      showEvery == freezed
          ? _value.showEvery
          : showEvery // ignore: cast_nullable_to_non_nullable
              as bool?,
      takeMyHaveAuthour == freezed
          ? _value.takeMyHaveAuthour
          : takeMyHaveAuthour // ignore: cast_nullable_to_non_nullable
              as bool?,
      tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      dateNow == freezed
          ? _value.dateNow
          : dateNow // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_UpdateColoda implements _UpdateColoda {
  const _$_UpdateColoda(
      this.name,
      this.description,
      this.cards,
      this.imageURL,
      this.showEvery,
      this.takeMyHaveAuthour,
      this.tags,
      this.uid,
      this.dateNow);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final List<Card>? cards;
  @override
  final String? imageURL;
  @override
  final bool? showEvery;
  @override
  final bool? takeMyHaveAuthour;
  @override
  final List<String>? tags;
  @override
  final String uid;
  @override
  final DateTime? dateNow;

  @override
  String toString() {
    return 'ColodEvent.updateColoda(name: $name, description: $description, cards: $cards, imageURL: $imageURL, showEvery: $showEvery, takeMyHaveAuthour: $takeMyHaveAuthour, tags: $tags, uid: $uid, dateNow: $dateNow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateColoda &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)) &&
            (identical(other.showEvery, showEvery) ||
                const DeepCollectionEquality()
                    .equals(other.showEvery, showEvery)) &&
            (identical(other.takeMyHaveAuthour, takeMyHaveAuthour) ||
                const DeepCollectionEquality()
                    .equals(other.takeMyHaveAuthour, takeMyHaveAuthour)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.dateNow, dateNow) ||
                const DeepCollectionEquality().equals(other.dateNow, dateNow)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(showEvery) ^
      const DeepCollectionEquality().hash(takeMyHaveAuthour) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(dateNow);

  @JsonKey(ignore: true)
  @override
  _$UpdateColodaCopyWith<_UpdateColoda> get copyWith =>
      __$UpdateColodaCopyWithImpl<_UpdateColoda>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String colodaId) started,
    required TResult Function(String colodaId) load,
    required TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)
        updateColoda,
    required TResult Function(String colodaId) loadAfterUpdate,
    required TResult Function(String docId) deleteColoda,
  }) {
    return updateColoda(name, description, cards, imageURL, showEvery,
        takeMyHaveAuthour, tags, uid, dateNow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
  }) {
    return updateColoda?.call(name, description, cards, imageURL, showEvery,
        takeMyHaveAuthour, tags, uid, dateNow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
    required TResult orElse(),
  }) {
    if (updateColoda != null) {
      return updateColoda(name, description, cards, imageURL, showEvery,
          takeMyHaveAuthour, tags, uid, dateNow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateColoda value) updateColoda,
    required TResult Function(_LoadAfterUpdate value) loadAfterUpdate,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) {
    return updateColoda(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) {
    return updateColoda?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) {
    if (updateColoda != null) {
      return updateColoda(this);
    }
    return orElse();
  }
}

abstract class _UpdateColoda implements ColodEvent {
  const factory _UpdateColoda(
      String? name,
      String? description,
      List<Card>? cards,
      String? imageURL,
      bool? showEvery,
      bool? takeMyHaveAuthour,
      List<String>? tags,
      String uid,
      DateTime? dateNow) = _$_UpdateColoda;

  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Card>? get cards => throw _privateConstructorUsedError;
  String? get imageURL => throw _privateConstructorUsedError;
  bool? get showEvery => throw _privateConstructorUsedError;
  bool? get takeMyHaveAuthour => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  DateTime? get dateNow => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateColodaCopyWith<_UpdateColoda> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadAfterUpdateCopyWith<$Res> {
  factory _$LoadAfterUpdateCopyWith(
          _LoadAfterUpdate value, $Res Function(_LoadAfterUpdate) then) =
      __$LoadAfterUpdateCopyWithImpl<$Res>;
  $Res call({String colodaId});
}

/// @nodoc
class __$LoadAfterUpdateCopyWithImpl<$Res>
    extends _$ColodEventCopyWithImpl<$Res>
    implements _$LoadAfterUpdateCopyWith<$Res> {
  __$LoadAfterUpdateCopyWithImpl(
      _LoadAfterUpdate _value, $Res Function(_LoadAfterUpdate) _then)
      : super(_value, (v) => _then(v as _LoadAfterUpdate));

  @override
  _LoadAfterUpdate get _value => super._value as _LoadAfterUpdate;

  @override
  $Res call({
    Object? colodaId = freezed,
  }) {
    return _then(_LoadAfterUpdate(
      colodaId == freezed
          ? _value.colodaId
          : colodaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadAfterUpdate implements _LoadAfterUpdate {
  const _$_LoadAfterUpdate(this.colodaId);

  @override
  final String colodaId;

  @override
  String toString() {
    return 'ColodEvent.loadAfterUpdate(colodaId: $colodaId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadAfterUpdate &&
            (identical(other.colodaId, colodaId) ||
                const DeepCollectionEquality()
                    .equals(other.colodaId, colodaId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(colodaId);

  @JsonKey(ignore: true)
  @override
  _$LoadAfterUpdateCopyWith<_LoadAfterUpdate> get copyWith =>
      __$LoadAfterUpdateCopyWithImpl<_LoadAfterUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String colodaId) started,
    required TResult Function(String colodaId) load,
    required TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)
        updateColoda,
    required TResult Function(String colodaId) loadAfterUpdate,
    required TResult Function(String docId) deleteColoda,
  }) {
    return loadAfterUpdate(colodaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
  }) {
    return loadAfterUpdate?.call(colodaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
    required TResult orElse(),
  }) {
    if (loadAfterUpdate != null) {
      return loadAfterUpdate(colodaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_UpdateColoda value) updateColoda,
    required TResult Function(_LoadAfterUpdate value) loadAfterUpdate,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) {
    return loadAfterUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) {
    return loadAfterUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) {
    if (loadAfterUpdate != null) {
      return loadAfterUpdate(this);
    }
    return orElse();
  }
}

abstract class _LoadAfterUpdate implements ColodEvent {
  const factory _LoadAfterUpdate(String colodaId) = _$_LoadAfterUpdate;

  String get colodaId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadAfterUpdateCopyWith<_LoadAfterUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteColodaCopyWith<$Res> {
  factory _$DeleteColodaCopyWith(
          _DeleteColoda value, $Res Function(_DeleteColoda) then) =
      __$DeleteColodaCopyWithImpl<$Res>;
  $Res call({String docId});
}

/// @nodoc
class __$DeleteColodaCopyWithImpl<$Res> extends _$ColodEventCopyWithImpl<$Res>
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
    return 'ColodEvent.deleteColoda(docId: $docId)';
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
    required TResult Function(String colodaId) started,
    required TResult Function(String colodaId) load,
    required TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)
        updateColoda,
    required TResult Function(String colodaId) loadAfterUpdate,
    required TResult Function(String docId) deleteColoda,
  }) {
    return deleteColoda(docId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
    TResult Function(String docId)? deleteColoda,
  }) {
    return deleteColoda?.call(docId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String colodaId)? started,
    TResult Function(String colodaId)? load,
    TResult Function(
            String? name,
            String? description,
            List<Card>? cards,
            String? imageURL,
            bool? showEvery,
            bool? takeMyHaveAuthour,
            List<String>? tags,
            String uid,
            DateTime? dateNow)?
        updateColoda,
    TResult Function(String colodaId)? loadAfterUpdate,
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
    required TResult Function(_UpdateColoda value) updateColoda,
    required TResult Function(_LoadAfterUpdate value) loadAfterUpdate,
    required TResult Function(_DeleteColoda value) deleteColoda,
  }) {
    return deleteColoda(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
  }) {
    return deleteColoda?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_UpdateColoda value)? updateColoda,
    TResult Function(_LoadAfterUpdate value)? loadAfterUpdate,
    TResult Function(_DeleteColoda value)? deleteColoda,
    required TResult orElse(),
  }) {
    if (deleteColoda != null) {
      return deleteColoda(this);
    }
    return orElse();
  }
}

abstract class _DeleteColoda implements ColodEvent {
  const factory _DeleteColoda(String docId) = _$_DeleteColoda;

  String get docId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteColodaCopyWith<_DeleteColoda> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ColodStateTearOff {
  const _$ColodStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {required DetailColoda coloda,
      bool isUpdating = false,
      bool? isSuccses,
      bool isDeleteProccess = false,
      bool? isDeleteSuccess}) {
    return _Loaded(
      coloda: coloda,
      isUpdating: isUpdating,
      isSuccses: isSuccses,
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
const $ColodState = _$ColodStateTearOff();

/// @nodoc
mixin _$ColodState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DetailColoda coloda, bool isUpdating,
            bool? isSuccses, bool isDeleteProccess, bool? isDeleteSuccess)
        loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
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
abstract class $ColodStateCopyWith<$Res> {
  factory $ColodStateCopyWith(
          ColodState value, $Res Function(ColodState) then) =
      _$ColodStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ColodStateCopyWithImpl<$Res> implements $ColodStateCopyWith<$Res> {
  _$ColodStateCopyWithImpl(this._value, this._then);

  final ColodState _value;
  // ignore: unused_field
  final $Res Function(ColodState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ColodStateCopyWithImpl<$Res>
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
    return 'ColodState.initial()';
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
    required TResult Function(DetailColoda coloda, bool isUpdating,
            bool? isSuccses, bool isDeleteProccess, bool? isDeleteSuccess)
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
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
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
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
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

abstract class _Initial implements ColodState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ColodStateCopyWithImpl<$Res>
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
    return 'ColodState.loading()';
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
    required TResult Function(DetailColoda coloda, bool isUpdating,
            bool? isSuccses, bool isDeleteProccess, bool? isDeleteSuccess)
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
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
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
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
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

abstract class _Loading implements ColodState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {DetailColoda coloda,
      bool isUpdating,
      bool? isSuccses,
      bool isDeleteProccess,
      bool? isDeleteSuccess});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ColodStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? coloda = freezed,
    Object? isUpdating = freezed,
    Object? isSuccses = freezed,
    Object? isDeleteProccess = freezed,
    Object? isDeleteSuccess = freezed,
  }) {
    return _then(_Loaded(
      coloda: coloda == freezed
          ? _value.coloda
          : coloda // ignore: cast_nullable_to_non_nullable
              as DetailColoda,
      isUpdating: isUpdating == freezed
          ? _value.isUpdating
          : isUpdating // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccses: isSuccses == freezed
          ? _value.isSuccses
          : isSuccses // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      {required this.coloda,
      this.isUpdating = false,
      this.isSuccses,
      this.isDeleteProccess = false,
      this.isDeleteSuccess});

  @override
  final DetailColoda coloda;
  @JsonKey(defaultValue: false)
  @override
  final bool isUpdating;
  @override
  final bool? isSuccses;
  @JsonKey(defaultValue: false)
  @override
  final bool isDeleteProccess;
  @override
  final bool? isDeleteSuccess;

  @override
  String toString() {
    return 'ColodState.loaded(coloda: $coloda, isUpdating: $isUpdating, isSuccses: $isSuccses, isDeleteProccess: $isDeleteProccess, isDeleteSuccess: $isDeleteSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.coloda, coloda) ||
                const DeepCollectionEquality().equals(other.coloda, coloda)) &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
            (identical(other.isSuccses, isSuccses) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccses, isSuccses)) &&
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
      const DeepCollectionEquality().hash(coloda) ^
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality().hash(isSuccses) ^
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
    required TResult Function(DetailColoda coloda, bool isUpdating,
            bool? isSuccses, bool isDeleteProccess, bool? isDeleteSuccess)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(
        coloda, isUpdating, isSuccses, isDeleteProccess, isDeleteSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
  }) {
    return loaded?.call(
        coloda, isUpdating, isSuccses, isDeleteProccess, isDeleteSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
            bool isDeleteProccess, bool? isDeleteSuccess)?
        loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          coloda, isUpdating, isSuccses, isDeleteProccess, isDeleteSuccess);
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

abstract class _Loaded implements ColodState {
  const factory _Loaded(
      {required DetailColoda coloda,
      bool isUpdating,
      bool? isSuccses,
      bool isDeleteProccess,
      bool? isDeleteSuccess}) = _$_Loaded;

  DetailColoda get coloda => throw _privateConstructorUsedError;
  bool get isUpdating => throw _privateConstructorUsedError;
  bool? get isSuccses => throw _privateConstructorUsedError;
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
class __$ErrorCopyWithImpl<$Res> extends _$ColodStateCopyWithImpl<$Res>
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
    return 'ColodState.error(error: $error)';
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
    required TResult Function(DetailColoda coloda, bool isUpdating,
            bool? isSuccses, bool isDeleteProccess, bool? isDeleteSuccess)
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
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
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
    TResult Function(DetailColoda coloda, bool isUpdating, bool? isSuccses,
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

abstract class _Error implements ColodState {
  const factory _Error({String? error}) = _$_Error;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
