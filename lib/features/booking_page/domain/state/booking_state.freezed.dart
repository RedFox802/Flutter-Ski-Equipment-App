// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingState {
  int get currentIndex => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<QuestionnaireEntity> get questionnaires =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res>;
  $Res call(
      {int currentIndex,
      bool loading,
      bool error,
      List<QuestionnaireEntity> questionnaires});
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res> implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  final BookingState _value;
  // ignore: unused_field
  final $Res Function(BookingState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? loading = freezed,
    Object? error = freezed,
    Object? questionnaires = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      questionnaires: questionnaires == freezed
          ? _value.questionnaires
          : questionnaires // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$_BookingStateCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$_BookingStateCopyWith(
          _$_BookingState value, $Res Function(_$_BookingState) then) =
      __$$_BookingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentIndex,
      bool loading,
      bool error,
      List<QuestionnaireEntity> questionnaires});
}

/// @nodoc
class __$$_BookingStateCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res>
    implements _$$_BookingStateCopyWith<$Res> {
  __$$_BookingStateCopyWithImpl(
      _$_BookingState _value, $Res Function(_$_BookingState) _then)
      : super(_value, (v) => _then(v as _$_BookingState));

  @override
  _$_BookingState get _value => super._value as _$_BookingState;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? loading = freezed,
    Object? error = freezed,
    Object? questionnaires = freezed,
  }) {
    return _then(_$_BookingState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      questionnaires: questionnaires == freezed
          ? _value._questionnaires
          : questionnaires // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireEntity>,
    ));
  }
}

/// @nodoc

class _$_BookingState implements _BookingState {
  const _$_BookingState(
      {this.currentIndex = -1,
      this.loading = false,
      this.error = false,
      final List<QuestionnaireEntity> questionnaires = const []})
      : _questionnaires = questionnaires;

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  final List<QuestionnaireEntity> _questionnaires;
  @override
  @JsonKey()
  List<QuestionnaireEntity> get questionnaires {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionnaires);
  }

  @override
  String toString() {
    return 'BookingState(currentIndex: $currentIndex, loading: $loading, error: $error, questionnaires: $questionnaires)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingState &&
            const DeepCollectionEquality()
                .equals(other.currentIndex, currentIndex) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other._questionnaires, _questionnaires));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentIndex),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(_questionnaires));

  @JsonKey(ignore: true)
  @override
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      __$$_BookingStateCopyWithImpl<_$_BookingState>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {final int currentIndex,
      final bool loading,
      final bool error,
      final List<QuestionnaireEntity> questionnaires}) = _$_BookingState;

  @override
  int get currentIndex;
  @override
  bool get loading;
  @override
  bool get error;
  @override
  List<QuestionnaireEntity> get questionnaires;
  @override
  @JsonKey(ignore: true)
  _$$_BookingStateCopyWith<_$_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
