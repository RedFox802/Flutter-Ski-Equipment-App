// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questionnaire_adding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionnaireAddingState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get ready => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionnaireAddingStateCopyWith<QuestionnaireAddingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireAddingStateCopyWith<$Res> {
  factory $QuestionnaireAddingStateCopyWith(QuestionnaireAddingState value,
          $Res Function(QuestionnaireAddingState) then) =
      _$QuestionnaireAddingStateCopyWithImpl<$Res>;
  $Res call({bool loading, bool error, bool ready});
}

/// @nodoc
class _$QuestionnaireAddingStateCopyWithImpl<$Res>
    implements $QuestionnaireAddingStateCopyWith<$Res> {
  _$QuestionnaireAddingStateCopyWithImpl(this._value, this._then);

  final QuestionnaireAddingState _value;
  // ignore: unused_field
  final $Res Function(QuestionnaireAddingState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? ready = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      ready: ready == freezed
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionnaireAddingStateCopyWith<$Res>
    implements $QuestionnaireAddingStateCopyWith<$Res> {
  factory _$$_QuestionnaireAddingStateCopyWith(
          _$_QuestionnaireAddingState value,
          $Res Function(_$_QuestionnaireAddingState) then) =
      __$$_QuestionnaireAddingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, bool error, bool ready});
}

/// @nodoc
class __$$_QuestionnaireAddingStateCopyWithImpl<$Res>
    extends _$QuestionnaireAddingStateCopyWithImpl<$Res>
    implements _$$_QuestionnaireAddingStateCopyWith<$Res> {
  __$$_QuestionnaireAddingStateCopyWithImpl(_$_QuestionnaireAddingState _value,
      $Res Function(_$_QuestionnaireAddingState) _then)
      : super(_value, (v) => _then(v as _$_QuestionnaireAddingState));

  @override
  _$_QuestionnaireAddingState get _value =>
      super._value as _$_QuestionnaireAddingState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? ready = freezed,
  }) {
    return _then(_$_QuestionnaireAddingState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      ready: ready == freezed
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_QuestionnaireAddingState implements _QuestionnaireAddingState {
  const _$_QuestionnaireAddingState(
      {this.loading = false, this.error = false, this.ready = false});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool ready;

  @override
  String toString() {
    return 'QuestionnaireAddingState(loading: $loading, error: $error, ready: $ready)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireAddingState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.ready, ready));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(ready));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionnaireAddingStateCopyWith<_$_QuestionnaireAddingState>
      get copyWith => __$$_QuestionnaireAddingStateCopyWithImpl<
          _$_QuestionnaireAddingState>(this, _$identity);
}

abstract class _QuestionnaireAddingState implements QuestionnaireAddingState {
  const factory _QuestionnaireAddingState(
      {final bool loading,
      final bool error,
      final bool ready}) = _$_QuestionnaireAddingState;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  bool get ready;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireAddingStateCopyWith<_$_QuestionnaireAddingState>
      get copyWith => throw _privateConstructorUsedError;
}
