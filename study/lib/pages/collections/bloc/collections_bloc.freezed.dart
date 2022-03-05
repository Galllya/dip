// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collections_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CollectionsEventTearOff {
  const _$CollectionsEventTearOff();

  _Started started(int cardsFilter) {
    return _Started(
      cardsFilter,
    );
  }

  _Load load(int cardsFilter) {
    return _Load(
      cardsFilter,
    );
  }

  _ChangeShowString changeShowString() {
    return const _ChangeShowString();
  }

  _Search search(String searchString, bool isTagsSearch) {
    return _Search(
      searchString,
      isTagsSearch,
    );
  }

  _ChangeFilter changeFilter(int cardsFilter) {
    return _ChangeFilter(
      cardsFilter,
    );
  }
}

/// @nodoc
const $CollectionsEvent = _$CollectionsEventTearOff();

/// @nodoc
mixin _$CollectionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardsFilter) started,
    required TResult Function(int cardsFilter) load,
    required TResult Function() changeShowString,
    required TResult Function(String searchString, bool isTagsSearch) search,
    required TResult Function(int cardsFilter) changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeShowString value) changeShowString,
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeFilter value) changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionsEventCopyWith<$Res> {
  factory $CollectionsEventCopyWith(
          CollectionsEvent value, $Res Function(CollectionsEvent) then) =
      _$CollectionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollectionsEventCopyWithImpl<$Res>
    implements $CollectionsEventCopyWith<$Res> {
  _$CollectionsEventCopyWithImpl(this._value, this._then);

  final CollectionsEvent _value;
  // ignore: unused_field
  final $Res Function(CollectionsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({int cardsFilter});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CollectionsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? cardsFilter = freezed,
  }) {
    return _then(_Started(
      cardsFilter == freezed
          ? _value.cardsFilter
          : cardsFilter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.cardsFilter);

  @override
  final int cardsFilter;

  @override
  String toString() {
    return 'CollectionsEvent.started(cardsFilter: $cardsFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.cardsFilter, cardsFilter) ||
                const DeepCollectionEquality()
                    .equals(other.cardsFilter, cardsFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cardsFilter);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardsFilter) started,
    required TResult Function(int cardsFilter) load,
    required TResult Function() changeShowString,
    required TResult Function(String searchString, bool isTagsSearch) search,
    required TResult Function(int cardsFilter) changeFilter,
  }) {
    return started(cardsFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
  }) {
    return started?.call(cardsFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(cardsFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeShowString value) changeShowString,
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeFilter value) changeFilter,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CollectionsEvent {
  const factory _Started(int cardsFilter) = _$_Started;

  int get cardsFilter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
  $Res call({int cardsFilter});
}

/// @nodoc
class __$LoadCopyWithImpl<$Res> extends _$CollectionsEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;

  @override
  $Res call({
    Object? cardsFilter = freezed,
  }) {
    return _then(_Load(
      cardsFilter == freezed
          ? _value.cardsFilter
          : cardsFilter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load(this.cardsFilter);

  @override
  final int cardsFilter;

  @override
  String toString() {
    return 'CollectionsEvent.load(cardsFilter: $cardsFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Load &&
            (identical(other.cardsFilter, cardsFilter) ||
                const DeepCollectionEquality()
                    .equals(other.cardsFilter, cardsFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cardsFilter);

  @JsonKey(ignore: true)
  @override
  _$LoadCopyWith<_Load> get copyWith =>
      __$LoadCopyWithImpl<_Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardsFilter) started,
    required TResult Function(int cardsFilter) load,
    required TResult Function() changeShowString,
    required TResult Function(String searchString, bool isTagsSearch) search,
    required TResult Function(int cardsFilter) changeFilter,
  }) {
    return load(cardsFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
  }) {
    return load?.call(cardsFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(cardsFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeShowString value) changeShowString,
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeFilter value) changeFilter,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements CollectionsEvent {
  const factory _Load(int cardsFilter) = _$_Load;

  int get cardsFilter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadCopyWith<_Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeShowStringCopyWith<$Res> {
  factory _$ChangeShowStringCopyWith(
          _ChangeShowString value, $Res Function(_ChangeShowString) then) =
      __$ChangeShowStringCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeShowStringCopyWithImpl<$Res>
    extends _$CollectionsEventCopyWithImpl<$Res>
    implements _$ChangeShowStringCopyWith<$Res> {
  __$ChangeShowStringCopyWithImpl(
      _ChangeShowString _value, $Res Function(_ChangeShowString) _then)
      : super(_value, (v) => _then(v as _ChangeShowString));

  @override
  _ChangeShowString get _value => super._value as _ChangeShowString;
}

/// @nodoc

class _$_ChangeShowString implements _ChangeShowString {
  const _$_ChangeShowString();

  @override
  String toString() {
    return 'CollectionsEvent.changeShowString()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ChangeShowString);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardsFilter) started,
    required TResult Function(int cardsFilter) load,
    required TResult Function() changeShowString,
    required TResult Function(String searchString, bool isTagsSearch) search,
    required TResult Function(int cardsFilter) changeFilter,
  }) {
    return changeShowString();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
  }) {
    return changeShowString?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
    required TResult orElse(),
  }) {
    if (changeShowString != null) {
      return changeShowString();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeShowString value) changeShowString,
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeFilter value) changeFilter,
  }) {
    return changeShowString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
  }) {
    return changeShowString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) {
    if (changeShowString != null) {
      return changeShowString(this);
    }
    return orElse();
  }
}

abstract class _ChangeShowString implements CollectionsEvent {
  const factory _ChangeShowString() = _$_ChangeShowString;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  $Res call({String searchString, bool isTagsSearch});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$CollectionsEventCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object? searchString = freezed,
    Object? isTagsSearch = freezed,
  }) {
    return _then(_Search(
      searchString == freezed
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
      isTagsSearch == freezed
          ? _value.isTagsSearch
          : isTagsSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.searchString, this.isTagsSearch);

  @override
  final String searchString;
  @override
  final bool isTagsSearch;

  @override
  String toString() {
    return 'CollectionsEvent.search(searchString: $searchString, isTagsSearch: $isTagsSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Search &&
            (identical(other.searchString, searchString) ||
                const DeepCollectionEquality()
                    .equals(other.searchString, searchString)) &&
            (identical(other.isTagsSearch, isTagsSearch) ||
                const DeepCollectionEquality()
                    .equals(other.isTagsSearch, isTagsSearch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchString) ^
      const DeepCollectionEquality().hash(isTagsSearch);

  @JsonKey(ignore: true)
  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardsFilter) started,
    required TResult Function(int cardsFilter) load,
    required TResult Function() changeShowString,
    required TResult Function(String searchString, bool isTagsSearch) search,
    required TResult Function(int cardsFilter) changeFilter,
  }) {
    return search(searchString, isTagsSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
  }) {
    return search?.call(searchString, isTagsSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchString, isTagsSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeShowString value) changeShowString,
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeFilter value) changeFilter,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements CollectionsEvent {
  const factory _Search(String searchString, bool isTagsSearch) = _$_Search;

  String get searchString => throw _privateConstructorUsedError;
  bool get isTagsSearch => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeFilterCopyWith<$Res> {
  factory _$ChangeFilterCopyWith(
          _ChangeFilter value, $Res Function(_ChangeFilter) then) =
      __$ChangeFilterCopyWithImpl<$Res>;
  $Res call({int cardsFilter});
}

/// @nodoc
class __$ChangeFilterCopyWithImpl<$Res>
    extends _$CollectionsEventCopyWithImpl<$Res>
    implements _$ChangeFilterCopyWith<$Res> {
  __$ChangeFilterCopyWithImpl(
      _ChangeFilter _value, $Res Function(_ChangeFilter) _then)
      : super(_value, (v) => _then(v as _ChangeFilter));

  @override
  _ChangeFilter get _value => super._value as _ChangeFilter;

  @override
  $Res call({
    Object? cardsFilter = freezed,
  }) {
    return _then(_ChangeFilter(
      cardsFilter == freezed
          ? _value.cardsFilter
          : cardsFilter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeFilter implements _ChangeFilter {
  const _$_ChangeFilter(this.cardsFilter);

  @override
  final int cardsFilter;

  @override
  String toString() {
    return 'CollectionsEvent.changeFilter(cardsFilter: $cardsFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeFilter &&
            (identical(other.cardsFilter, cardsFilter) ||
                const DeepCollectionEquality()
                    .equals(other.cardsFilter, cardsFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cardsFilter);

  @JsonKey(ignore: true)
  @override
  _$ChangeFilterCopyWith<_ChangeFilter> get copyWith =>
      __$ChangeFilterCopyWithImpl<_ChangeFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardsFilter) started,
    required TResult Function(int cardsFilter) load,
    required TResult Function() changeShowString,
    required TResult Function(String searchString, bool isTagsSearch) search,
    required TResult Function(int cardsFilter) changeFilter,
  }) {
    return changeFilter(cardsFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
  }) {
    return changeFilter?.call(cardsFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardsFilter)? started,
    TResult Function(int cardsFilter)? load,
    TResult Function()? changeShowString,
    TResult Function(String searchString, bool isTagsSearch)? search,
    TResult Function(int cardsFilter)? changeFilter,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter(cardsFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Load value) load,
    required TResult Function(_ChangeShowString value) changeShowString,
    required TResult Function(_Search value) search,
    required TResult Function(_ChangeFilter value) changeFilter,
  }) {
    return changeFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
  }) {
    return changeFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Load value)? load,
    TResult Function(_ChangeShowString value)? changeShowString,
    TResult Function(_Search value)? search,
    TResult Function(_ChangeFilter value)? changeFilter,
    required TResult orElse(),
  }) {
    if (changeFilter != null) {
      return changeFilter(this);
    }
    return orElse();
  }
}

abstract class _ChangeFilter implements CollectionsEvent {
  const factory _ChangeFilter(int cardsFilter) = _$_ChangeFilter;

  int get cardsFilter => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChangeFilterCopyWith<_ChangeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CollectionsStateTearOff {
  const _$CollectionsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {required List<Collection> collection,
      bool showSearchString = false,
      int cardsFilter = 0}) {
    return _Loaded(
      collection: collection,
      showSearchString: showSearchString,
      cardsFilter: cardsFilter,
    );
  }

  _Error error({String? error}) {
    return _Error(
      error: error,
    );
  }
}

/// @nodoc
const $CollectionsState = _$CollectionsStateTearOff();

/// @nodoc
mixin _$CollectionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Collection> collection, bool showSearchString, int cardsFilter)
        loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
        loaded,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
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
abstract class $CollectionsStateCopyWith<$Res> {
  factory $CollectionsStateCopyWith(
          CollectionsState value, $Res Function(CollectionsState) then) =
      _$CollectionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CollectionsStateCopyWithImpl<$Res>
    implements $CollectionsStateCopyWith<$Res> {
  _$CollectionsStateCopyWithImpl(this._value, this._then);

  final CollectionsState _value;
  // ignore: unused_field
  final $Res Function(CollectionsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CollectionsStateCopyWithImpl<$Res>
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
    return 'CollectionsState.initial()';
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
            List<Collection> collection, bool showSearchString, int cardsFilter)
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
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
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
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
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

abstract class _Initial implements CollectionsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$CollectionsStateCopyWithImpl<$Res>
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
    return 'CollectionsState.loading()';
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
            List<Collection> collection, bool showSearchString, int cardsFilter)
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
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
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
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
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

abstract class _Loading implements CollectionsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Collection> collection, bool showSearchString, int cardsFilter});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$CollectionsStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? collection = freezed,
    Object? showSearchString = freezed,
    Object? cardsFilter = freezed,
  }) {
    return _then(_Loaded(
      collection: collection == freezed
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
      showSearchString: showSearchString == freezed
          ? _value.showSearchString
          : showSearchString // ignore: cast_nullable_to_non_nullable
              as bool,
      cardsFilter: cardsFilter == freezed
          ? _value.cardsFilter
          : cardsFilter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required this.collection,
      this.showSearchString = false,
      this.cardsFilter = 0});

  @override
  final List<Collection> collection;
  @JsonKey(defaultValue: false)
  @override
  final bool showSearchString;
  @JsonKey(defaultValue: 0)
  @override
  final int cardsFilter;

  @override
  String toString() {
    return 'CollectionsState.loaded(collection: $collection, showSearchString: $showSearchString, cardsFilter: $cardsFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.collection, collection) ||
                const DeepCollectionEquality()
                    .equals(other.collection, collection)) &&
            (identical(other.showSearchString, showSearchString) ||
                const DeepCollectionEquality()
                    .equals(other.showSearchString, showSearchString)) &&
            (identical(other.cardsFilter, cardsFilter) ||
                const DeepCollectionEquality()
                    .equals(other.cardsFilter, cardsFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(collection) ^
      const DeepCollectionEquality().hash(showSearchString) ^
      const DeepCollectionEquality().hash(cardsFilter);

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
            List<Collection> collection, bool showSearchString, int cardsFilter)
        loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(collection, showSearchString, cardsFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
        loaded,
    TResult Function(String? error)? error,
  }) {
    return loaded?.call(collection, showSearchString, cardsFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
        loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(collection, showSearchString, cardsFilter);
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

abstract class _Loaded implements CollectionsState {
  const factory _Loaded(
      {required List<Collection> collection,
      bool showSearchString,
      int cardsFilter}) = _$_Loaded;

  List<Collection> get collection => throw _privateConstructorUsedError;
  bool get showSearchString => throw _privateConstructorUsedError;
  int get cardsFilter => throw _privateConstructorUsedError;
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
class __$ErrorCopyWithImpl<$Res> extends _$CollectionsStateCopyWithImpl<$Res>
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
    return 'CollectionsState.error(error: $error)';
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
            List<Collection> collection, bool showSearchString, int cardsFilter)
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
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
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
    TResult Function(List<Collection> collection, bool showSearchString,
            int cardsFilter)?
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

abstract class _Error implements CollectionsState {
  const factory _Error({String? error}) = _$_Error;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
