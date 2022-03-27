// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_training_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DailyTrainingEventTearOff {
  const _$DailyTrainingEventTearOff();

  _Started started() {
    return const _Started();
  }

  _AddCard addCard(List<Card> cards) {
    return _AddCard(
      cards,
    );
  }

  _DeleteCard deleteCard(List<String> cards) {
    return _DeleteCard(
      cards,
    );
  }

  _StartDelete startDelete() {
    return const _StartDelete();
  }

  _StartGame startGame() {
    return const _StartGame();
  }

  _UpdateCards updateCards(List<DailyCard> cards) {
    return _UpdateCards(
      cards,
    );
  }

  _EndGame endGame() {
    return const _EndGame();
  }

  _NoCards noCards() {
    return const _NoCards();
  }
}

/// @nodoc
const $DailyTrainingEvent = _$DailyTrainingEventTearOff();

/// @nodoc
mixin _$DailyTrainingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Card> cards) addCard,
    required TResult Function(List<String> cards) deleteCard,
    required TResult Function() startDelete,
    required TResult Function() startGame,
    required TResult Function(List<DailyCard> cards) updateCards,
    required TResult Function() endGame,
    required TResult Function() noCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_StartDelete value) startDelete,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_UpdateCards value) updateCards,
    required TResult Function(_EndGame value) endGame,
    required TResult Function(_NoCards value) noCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyTrainingEventCopyWith<$Res> {
  factory $DailyTrainingEventCopyWith(
          DailyTrainingEvent value, $Res Function(DailyTrainingEvent) then) =
      _$DailyTrainingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DailyTrainingEventCopyWithImpl<$Res>
    implements $DailyTrainingEventCopyWith<$Res> {
  _$DailyTrainingEventCopyWithImpl(this._value, this._then);

  final DailyTrainingEvent _value;
  // ignore: unused_field
  final $Res Function(DailyTrainingEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$DailyTrainingEventCopyWithImpl<$Res>
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
    return 'DailyTrainingEvent.started()';
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
    required TResult Function(List<Card> cards) addCard,
    required TResult Function(List<String> cards) deleteCard,
    required TResult Function() startDelete,
    required TResult Function() startGame,
    required TResult Function(List<DailyCard> cards) updateCards,
    required TResult Function() endGame,
    required TResult Function() noCards,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
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
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_StartDelete value) startDelete,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_UpdateCards value) updateCards,
    required TResult Function(_EndGame value) endGame,
    required TResult Function(_NoCards value) noCards,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DailyTrainingEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$AddCardCopyWith<$Res> {
  factory _$AddCardCopyWith(_AddCard value, $Res Function(_AddCard) then) =
      __$AddCardCopyWithImpl<$Res>;
  $Res call({List<Card> cards});
}

/// @nodoc
class __$AddCardCopyWithImpl<$Res>
    extends _$DailyTrainingEventCopyWithImpl<$Res>
    implements _$AddCardCopyWith<$Res> {
  __$AddCardCopyWithImpl(_AddCard _value, $Res Function(_AddCard) _then)
      : super(_value, (v) => _then(v as _AddCard));

  @override
  _AddCard get _value => super._value as _AddCard;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(_AddCard(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
    ));
  }
}

/// @nodoc

class _$_AddCard implements _AddCard {
  const _$_AddCard(this.cards);

  @override
  final List<Card> cards;

  @override
  String toString() {
    return 'DailyTrainingEvent.addCard(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCard &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cards);

  @JsonKey(ignore: true)
  @override
  _$AddCardCopyWith<_AddCard> get copyWith =>
      __$AddCardCopyWithImpl<_AddCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Card> cards) addCard,
    required TResult Function(List<String> cards) deleteCard,
    required TResult Function() startDelete,
    required TResult Function() startGame,
    required TResult Function(List<DailyCard> cards) updateCards,
    required TResult Function() endGame,
    required TResult Function() noCards,
  }) {
    return addCard(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
  }) {
    return addCard?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_StartDelete value) startDelete,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_UpdateCards value) updateCards,
    required TResult Function(_EndGame value) endGame,
    required TResult Function(_NoCards value) noCards,
  }) {
    return addCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
  }) {
    return addCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(this);
    }
    return orElse();
  }
}

abstract class _AddCard implements DailyTrainingEvent {
  const factory _AddCard(List<Card> cards) = _$_AddCard;

  List<Card> get cards => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddCardCopyWith<_AddCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCardCopyWith<$Res> {
  factory _$DeleteCardCopyWith(
          _DeleteCard value, $Res Function(_DeleteCard) then) =
      __$DeleteCardCopyWithImpl<$Res>;
  $Res call({List<String> cards});
}

/// @nodoc
class __$DeleteCardCopyWithImpl<$Res>
    extends _$DailyTrainingEventCopyWithImpl<$Res>
    implements _$DeleteCardCopyWith<$Res> {
  __$DeleteCardCopyWithImpl(
      _DeleteCard _value, $Res Function(_DeleteCard) _then)
      : super(_value, (v) => _then(v as _DeleteCard));

  @override
  _DeleteCard get _value => super._value as _DeleteCard;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(_DeleteCard(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_DeleteCard implements _DeleteCard {
  const _$_DeleteCard(this.cards);

  @override
  final List<String> cards;

  @override
  String toString() {
    return 'DailyTrainingEvent.deleteCard(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteCard &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cards);

  @JsonKey(ignore: true)
  @override
  _$DeleteCardCopyWith<_DeleteCard> get copyWith =>
      __$DeleteCardCopyWithImpl<_DeleteCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Card> cards) addCard,
    required TResult Function(List<String> cards) deleteCard,
    required TResult Function() startDelete,
    required TResult Function() startGame,
    required TResult Function(List<DailyCard> cards) updateCards,
    required TResult Function() endGame,
    required TResult Function() noCards,
  }) {
    return deleteCard(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
  }) {
    return deleteCard?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_StartDelete value) startDelete,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_UpdateCards value) updateCards,
    required TResult Function(_EndGame value) endGame,
    required TResult Function(_NoCards value) noCards,
  }) {
    return deleteCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
  }) {
    return deleteCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(this);
    }
    return orElse();
  }
}

abstract class _DeleteCard implements DailyTrainingEvent {
  const factory _DeleteCard(List<String> cards) = _$_DeleteCard;

  List<String> get cards => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCardCopyWith<_DeleteCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartDeleteCopyWith<$Res> {
  factory _$StartDeleteCopyWith(
          _StartDelete value, $Res Function(_StartDelete) then) =
      __$StartDeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartDeleteCopyWithImpl<$Res>
    extends _$DailyTrainingEventCopyWithImpl<$Res>
    implements _$StartDeleteCopyWith<$Res> {
  __$StartDeleteCopyWithImpl(
      _StartDelete _value, $Res Function(_StartDelete) _then)
      : super(_value, (v) => _then(v as _StartDelete));

  @override
  _StartDelete get _value => super._value as _StartDelete;
}

/// @nodoc

class _$_StartDelete implements _StartDelete {
  const _$_StartDelete();

  @override
  String toString() {
    return 'DailyTrainingEvent.startDelete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartDelete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Card> cards) addCard,
    required TResult Function(List<String> cards) deleteCard,
    required TResult Function() startDelete,
    required TResult Function() startGame,
    required TResult Function(List<DailyCard> cards) updateCards,
    required TResult Function() endGame,
    required TResult Function() noCards,
  }) {
    return startDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
  }) {
    return startDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
    required TResult orElse(),
  }) {
    if (startDelete != null) {
      return startDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_StartDelete value) startDelete,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_UpdateCards value) updateCards,
    required TResult Function(_EndGame value) endGame,
    required TResult Function(_NoCards value) noCards,
  }) {
    return startDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
  }) {
    return startDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
    required TResult orElse(),
  }) {
    if (startDelete != null) {
      return startDelete(this);
    }
    return orElse();
  }
}

abstract class _StartDelete implements DailyTrainingEvent {
  const factory _StartDelete() = _$_StartDelete;
}

/// @nodoc
abstract class _$StartGameCopyWith<$Res> {
  factory _$StartGameCopyWith(
          _StartGame value, $Res Function(_StartGame) then) =
      __$StartGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartGameCopyWithImpl<$Res>
    extends _$DailyTrainingEventCopyWithImpl<$Res>
    implements _$StartGameCopyWith<$Res> {
  __$StartGameCopyWithImpl(_StartGame _value, $Res Function(_StartGame) _then)
      : super(_value, (v) => _then(v as _StartGame));

  @override
  _StartGame get _value => super._value as _StartGame;
}

/// @nodoc

class _$_StartGame implements _StartGame {
  const _$_StartGame();

  @override
  String toString() {
    return 'DailyTrainingEvent.startGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Card> cards) addCard,
    required TResult Function(List<String> cards) deleteCard,
    required TResult Function() startDelete,
    required TResult Function() startGame,
    required TResult Function(List<DailyCard> cards) updateCards,
    required TResult Function() endGame,
    required TResult Function() noCards,
  }) {
    return startGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
  }) {
    return startGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_StartDelete value) startDelete,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_UpdateCards value) updateCards,
    required TResult Function(_EndGame value) endGame,
    required TResult Function(_NoCards value) noCards,
  }) {
    return startGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
  }) {
    return startGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
    required TResult orElse(),
  }) {
    if (startGame != null) {
      return startGame(this);
    }
    return orElse();
  }
}

abstract class _StartGame implements DailyTrainingEvent {
  const factory _StartGame() = _$_StartGame;
}

/// @nodoc
abstract class _$UpdateCardsCopyWith<$Res> {
  factory _$UpdateCardsCopyWith(
          _UpdateCards value, $Res Function(_UpdateCards) then) =
      __$UpdateCardsCopyWithImpl<$Res>;
  $Res call({List<DailyCard> cards});
}

/// @nodoc
class __$UpdateCardsCopyWithImpl<$Res>
    extends _$DailyTrainingEventCopyWithImpl<$Res>
    implements _$UpdateCardsCopyWith<$Res> {
  __$UpdateCardsCopyWithImpl(
      _UpdateCards _value, $Res Function(_UpdateCards) _then)
      : super(_value, (v) => _then(v as _UpdateCards));

  @override
  _UpdateCards get _value => super._value as _UpdateCards;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(_UpdateCards(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<DailyCard>,
    ));
  }
}

/// @nodoc

class _$_UpdateCards implements _UpdateCards {
  const _$_UpdateCards(this.cards);

  @override
  final List<DailyCard> cards;

  @override
  String toString() {
    return 'DailyTrainingEvent.updateCards(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCards &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cards);

  @JsonKey(ignore: true)
  @override
  _$UpdateCardsCopyWith<_UpdateCards> get copyWith =>
      __$UpdateCardsCopyWithImpl<_UpdateCards>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Card> cards) addCard,
    required TResult Function(List<String> cards) deleteCard,
    required TResult Function() startDelete,
    required TResult Function() startGame,
    required TResult Function(List<DailyCard> cards) updateCards,
    required TResult Function() endGame,
    required TResult Function() noCards,
  }) {
    return updateCards(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
  }) {
    return updateCards?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
    required TResult orElse(),
  }) {
    if (updateCards != null) {
      return updateCards(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_StartDelete value) startDelete,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_UpdateCards value) updateCards,
    required TResult Function(_EndGame value) endGame,
    required TResult Function(_NoCards value) noCards,
  }) {
    return updateCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
  }) {
    return updateCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
    required TResult orElse(),
  }) {
    if (updateCards != null) {
      return updateCards(this);
    }
    return orElse();
  }
}

abstract class _UpdateCards implements DailyTrainingEvent {
  const factory _UpdateCards(List<DailyCard> cards) = _$_UpdateCards;

  List<DailyCard> get cards => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCardsCopyWith<_UpdateCards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EndGameCopyWith<$Res> {
  factory _$EndGameCopyWith(_EndGame value, $Res Function(_EndGame) then) =
      __$EndGameCopyWithImpl<$Res>;
}

/// @nodoc
class __$EndGameCopyWithImpl<$Res>
    extends _$DailyTrainingEventCopyWithImpl<$Res>
    implements _$EndGameCopyWith<$Res> {
  __$EndGameCopyWithImpl(_EndGame _value, $Res Function(_EndGame) _then)
      : super(_value, (v) => _then(v as _EndGame));

  @override
  _EndGame get _value => super._value as _EndGame;
}

/// @nodoc

class _$_EndGame implements _EndGame {
  const _$_EndGame();

  @override
  String toString() {
    return 'DailyTrainingEvent.endGame()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EndGame);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Card> cards) addCard,
    required TResult Function(List<String> cards) deleteCard,
    required TResult Function() startDelete,
    required TResult Function() startGame,
    required TResult Function(List<DailyCard> cards) updateCards,
    required TResult Function() endGame,
    required TResult Function() noCards,
  }) {
    return endGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
  }) {
    return endGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
    required TResult orElse(),
  }) {
    if (endGame != null) {
      return endGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_StartDelete value) startDelete,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_UpdateCards value) updateCards,
    required TResult Function(_EndGame value) endGame,
    required TResult Function(_NoCards value) noCards,
  }) {
    return endGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
  }) {
    return endGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
    required TResult orElse(),
  }) {
    if (endGame != null) {
      return endGame(this);
    }
    return orElse();
  }
}

abstract class _EndGame implements DailyTrainingEvent {
  const factory _EndGame() = _$_EndGame;
}

/// @nodoc
abstract class _$NoCardsCopyWith<$Res> {
  factory _$NoCardsCopyWith(_NoCards value, $Res Function(_NoCards) then) =
      __$NoCardsCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoCardsCopyWithImpl<$Res>
    extends _$DailyTrainingEventCopyWithImpl<$Res>
    implements _$NoCardsCopyWith<$Res> {
  __$NoCardsCopyWithImpl(_NoCards _value, $Res Function(_NoCards) _then)
      : super(_value, (v) => _then(v as _NoCards));

  @override
  _NoCards get _value => super._value as _NoCards;
}

/// @nodoc

class _$_NoCards implements _NoCards {
  const _$_NoCards();

  @override
  String toString() {
    return 'DailyTrainingEvent.noCards()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoCards);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Card> cards) addCard,
    required TResult Function(List<String> cards) deleteCard,
    required TResult Function() startDelete,
    required TResult Function() startGame,
    required TResult Function(List<DailyCard> cards) updateCards,
    required TResult Function() endGame,
    required TResult Function() noCards,
  }) {
    return noCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
  }) {
    return noCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Card> cards)? addCard,
    TResult Function(List<String> cards)? deleteCard,
    TResult Function()? startDelete,
    TResult Function()? startGame,
    TResult Function(List<DailyCard> cards)? updateCards,
    TResult Function()? endGame,
    TResult Function()? noCards,
    required TResult orElse(),
  }) {
    if (noCards != null) {
      return noCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCard value) addCard,
    required TResult Function(_DeleteCard value) deleteCard,
    required TResult Function(_StartDelete value) startDelete,
    required TResult Function(_StartGame value) startGame,
    required TResult Function(_UpdateCards value) updateCards,
    required TResult Function(_EndGame value) endGame,
    required TResult Function(_NoCards value) noCards,
  }) {
    return noCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
  }) {
    return noCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCard value)? addCard,
    TResult Function(_DeleteCard value)? deleteCard,
    TResult Function(_StartDelete value)? startDelete,
    TResult Function(_StartGame value)? startGame,
    TResult Function(_UpdateCards value)? updateCards,
    TResult Function(_EndGame value)? endGame,
    TResult Function(_NoCards value)? noCards,
    required TResult orElse(),
  }) {
    if (noCards != null) {
      return noCards(this);
    }
    return orElse();
  }
}

abstract class _NoCards implements DailyTrainingEvent {
  const factory _NoCards() = _$_NoCards;
}

/// @nodoc
class _$DailyTrainingStateTearOff {
  const _$DailyTrainingStateTearOff();

  _Initial initial(
      {Stream<dynamic>? cards,
      Stream<dynamic>? cardsTwo,
      dynamic showDelete = false,
      DateTime? lastTrain,
      dynamic loading = true,
      dynamic showGame = false,
      dynamic endGame = false,
      dynamic noCards = false}) {
    return _Initial(
      cards: cards,
      cardsTwo: cardsTwo,
      showDelete: showDelete,
      lastTrain: lastTrain,
      loading: loading,
      showGame: showGame,
      endGame: endGame,
      noCards: noCards,
    );
  }
}

/// @nodoc
const $DailyTrainingState = _$DailyTrainingStateTearOff();

/// @nodoc
mixin _$DailyTrainingState {
  Stream<dynamic>? get cards => throw _privateConstructorUsedError;
  Stream<dynamic>? get cardsTwo => throw _privateConstructorUsedError;
  dynamic get showDelete => throw _privateConstructorUsedError;
  DateTime? get lastTrain => throw _privateConstructorUsedError;
  dynamic get loading => throw _privateConstructorUsedError;
  dynamic get showGame => throw _privateConstructorUsedError;
  dynamic get endGame => throw _privateConstructorUsedError;
  dynamic get noCards => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Stream<dynamic>? cards,
            Stream<dynamic>? cardsTwo,
            dynamic showDelete,
            DateTime? lastTrain,
            dynamic loading,
            dynamic showGame,
            dynamic endGame,
            dynamic noCards)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Stream<dynamic>? cards,
            Stream<dynamic>? cardsTwo,
            dynamic showDelete,
            DateTime? lastTrain,
            dynamic loading,
            dynamic showGame,
            dynamic endGame,
            dynamic noCards)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Stream<dynamic>? cards,
            Stream<dynamic>? cardsTwo,
            dynamic showDelete,
            DateTime? lastTrain,
            dynamic loading,
            dynamic showGame,
            dynamic endGame,
            dynamic noCards)?
        initial,
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
  $DailyTrainingStateCopyWith<DailyTrainingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyTrainingStateCopyWith<$Res> {
  factory $DailyTrainingStateCopyWith(
          DailyTrainingState value, $Res Function(DailyTrainingState) then) =
      _$DailyTrainingStateCopyWithImpl<$Res>;
  $Res call(
      {Stream<dynamic>? cards,
      Stream<dynamic>? cardsTwo,
      dynamic showDelete,
      DateTime? lastTrain,
      dynamic loading,
      dynamic showGame,
      dynamic endGame,
      dynamic noCards});
}

/// @nodoc
class _$DailyTrainingStateCopyWithImpl<$Res>
    implements $DailyTrainingStateCopyWith<$Res> {
  _$DailyTrainingStateCopyWithImpl(this._value, this._then);

  final DailyTrainingState _value;
  // ignore: unused_field
  final $Res Function(DailyTrainingState) _then;

  @override
  $Res call({
    Object? cards = freezed,
    Object? cardsTwo = freezed,
    Object? showDelete = freezed,
    Object? lastTrain = freezed,
    Object? loading = freezed,
    Object? showGame = freezed,
    Object? endGame = freezed,
    Object? noCards = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Stream<dynamic>?,
      cardsTwo: cardsTwo == freezed
          ? _value.cardsTwo
          : cardsTwo // ignore: cast_nullable_to_non_nullable
              as Stream<dynamic>?,
      showDelete: showDelete == freezed
          ? _value.showDelete
          : showDelete // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lastTrain: lastTrain == freezed
          ? _value.lastTrain
          : lastTrain // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showGame: showGame == freezed
          ? _value.showGame
          : showGame // ignore: cast_nullable_to_non_nullable
              as dynamic,
      endGame: endGame == freezed
          ? _value.endGame
          : endGame // ignore: cast_nullable_to_non_nullable
              as dynamic,
      noCards: noCards == freezed
          ? _value.noCards
          : noCards // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $DailyTrainingStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stream<dynamic>? cards,
      Stream<dynamic>? cardsTwo,
      dynamic showDelete,
      DateTime? lastTrain,
      dynamic loading,
      dynamic showGame,
      dynamic endGame,
      dynamic noCards});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$DailyTrainingStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? cards = freezed,
    Object? cardsTwo = freezed,
    Object? showDelete = freezed,
    Object? lastTrain = freezed,
    Object? loading = freezed,
    Object? showGame = freezed,
    Object? endGame = freezed,
    Object? noCards = freezed,
  }) {
    return _then(_Initial(
      cards: cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as Stream<dynamic>?,
      cardsTwo: cardsTwo == freezed
          ? _value.cardsTwo
          : cardsTwo // ignore: cast_nullable_to_non_nullable
              as Stream<dynamic>?,
      showDelete: showDelete == freezed ? _value.showDelete : showDelete,
      lastTrain: lastTrain == freezed
          ? _value.lastTrain
          : lastTrain // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loading: loading == freezed ? _value.loading : loading,
      showGame: showGame == freezed ? _value.showGame : showGame,
      endGame: endGame == freezed ? _value.endGame : endGame,
      noCards: noCards == freezed ? _value.noCards : noCards,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.cards,
      this.cardsTwo,
      this.showDelete = false,
      this.lastTrain,
      this.loading = true,
      this.showGame = false,
      this.endGame = false,
      this.noCards = false});

  @override
  final Stream<dynamic>? cards;
  @override
  final Stream<dynamic>? cardsTwo;
  @JsonKey(defaultValue: false)
  @override
  final dynamic showDelete;
  @override
  final DateTime? lastTrain;
  @JsonKey(defaultValue: true)
  @override
  final dynamic loading;
  @JsonKey(defaultValue: false)
  @override
  final dynamic showGame;
  @JsonKey(defaultValue: false)
  @override
  final dynamic endGame;
  @JsonKey(defaultValue: false)
  @override
  final dynamic noCards;

  @override
  String toString() {
    return 'DailyTrainingState.initial(cards: $cards, cardsTwo: $cardsTwo, showDelete: $showDelete, lastTrain: $lastTrain, loading: $loading, showGame: $showGame, endGame: $endGame, noCards: $noCards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.cardsTwo, cardsTwo) ||
                const DeepCollectionEquality()
                    .equals(other.cardsTwo, cardsTwo)) &&
            (identical(other.showDelete, showDelete) ||
                const DeepCollectionEquality()
                    .equals(other.showDelete, showDelete)) &&
            (identical(other.lastTrain, lastTrain) ||
                const DeepCollectionEquality()
                    .equals(other.lastTrain, lastTrain)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.showGame, showGame) ||
                const DeepCollectionEquality()
                    .equals(other.showGame, showGame)) &&
            (identical(other.endGame, endGame) ||
                const DeepCollectionEquality()
                    .equals(other.endGame, endGame)) &&
            (identical(other.noCards, noCards) ||
                const DeepCollectionEquality().equals(other.noCards, noCards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(cardsTwo) ^
      const DeepCollectionEquality().hash(showDelete) ^
      const DeepCollectionEquality().hash(lastTrain) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(showGame) ^
      const DeepCollectionEquality().hash(endGame) ^
      const DeepCollectionEquality().hash(noCards);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Stream<dynamic>? cards,
            Stream<dynamic>? cardsTwo,
            dynamic showDelete,
            DateTime? lastTrain,
            dynamic loading,
            dynamic showGame,
            dynamic endGame,
            dynamic noCards)
        initial,
  }) {
    return initial(cards, cardsTwo, showDelete, lastTrain, loading, showGame,
        endGame, noCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Stream<dynamic>? cards,
            Stream<dynamic>? cardsTwo,
            dynamic showDelete,
            DateTime? lastTrain,
            dynamic loading,
            dynamic showGame,
            dynamic endGame,
            dynamic noCards)?
        initial,
  }) {
    return initial?.call(cards, cardsTwo, showDelete, lastTrain, loading,
        showGame, endGame, noCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Stream<dynamic>? cards,
            Stream<dynamic>? cardsTwo,
            dynamic showDelete,
            DateTime? lastTrain,
            dynamic loading,
            dynamic showGame,
            dynamic endGame,
            dynamic noCards)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(cards, cardsTwo, showDelete, lastTrain, loading, showGame,
          endGame, noCards);
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

abstract class _Initial implements DailyTrainingState {
  const factory _Initial(
      {Stream<dynamic>? cards,
      Stream<dynamic>? cardsTwo,
      dynamic showDelete,
      DateTime? lastTrain,
      dynamic loading,
      dynamic showGame,
      dynamic endGame,
      dynamic noCards}) = _$_Initial;

  @override
  Stream<dynamic>? get cards => throw _privateConstructorUsedError;
  @override
  Stream<dynamic>? get cardsTwo => throw _privateConstructorUsedError;
  @override
  dynamic get showDelete => throw _privateConstructorUsedError;
  @override
  DateTime? get lastTrain => throw _privateConstructorUsedError;
  @override
  dynamic get loading => throw _privateConstructorUsedError;
  @override
  dynamic get showGame => throw _privateConstructorUsedError;
  @override
  dynamic get endGame => throw _privateConstructorUsedError;
  @override
  dynamic get noCards => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
