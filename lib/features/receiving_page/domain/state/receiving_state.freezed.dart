// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'receiving_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReceivingState {
  bool get isDelivery => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get orderCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceivingStateCopyWith<ReceivingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceivingStateCopyWith<$Res> {
  factory $ReceivingStateCopyWith(
          ReceivingState value, $Res Function(ReceivingState) then) =
      _$ReceivingStateCopyWithImpl<$Res>;
  $Res call({bool isDelivery, bool loading, bool error, bool orderCreated});
}

/// @nodoc
class _$ReceivingStateCopyWithImpl<$Res>
    implements $ReceivingStateCopyWith<$Res> {
  _$ReceivingStateCopyWithImpl(this._value, this._then);

  final ReceivingState _value;
  // ignore: unused_field
  final $Res Function(ReceivingState) _then;

  @override
  $Res call({
    Object? isDelivery = freezed,
    Object? loading = freezed,
    Object? error = freezed,
    Object? orderCreated = freezed,
  }) {
    return _then(_value.copyWith(
      isDelivery: isDelivery == freezed
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCreated: orderCreated == freezed
          ? _value.orderCreated
          : orderCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ReceivingStateCopyWith<$Res>
    implements $ReceivingStateCopyWith<$Res> {
  factory _$$_ReceivingStateCopyWith(
          _$_ReceivingState value, $Res Function(_$_ReceivingState) then) =
      __$$_ReceivingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isDelivery, bool loading, bool error, bool orderCreated});
}

/// @nodoc
class __$$_ReceivingStateCopyWithImpl<$Res>
    extends _$ReceivingStateCopyWithImpl<$Res>
    implements _$$_ReceivingStateCopyWith<$Res> {
  __$$_ReceivingStateCopyWithImpl(
      _$_ReceivingState _value, $Res Function(_$_ReceivingState) _then)
      : super(_value, (v) => _then(v as _$_ReceivingState));

  @override
  _$_ReceivingState get _value => super._value as _$_ReceivingState;

  @override
  $Res call({
    Object? isDelivery = freezed,
    Object? loading = freezed,
    Object? error = freezed,
    Object? orderCreated = freezed,
  }) {
    return _then(_$_ReceivingState(
      isDelivery: isDelivery == freezed
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCreated: orderCreated == freezed
          ? _value.orderCreated
          : orderCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReceivingState implements _ReceivingState {
  const _$_ReceivingState(
      {this.isDelivery = true,
      this.loading = false,
      this.error = false,
      this.orderCreated = false});

  @override
  @JsonKey()
  final bool isDelivery;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool orderCreated;

  @override
  String toString() {
    return 'ReceivingState(isDelivery: $isDelivery, loading: $loading, error: $error, orderCreated: $orderCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceivingState &&
            const DeepCollectionEquality()
                .equals(other.isDelivery, isDelivery) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.orderCreated, orderCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDelivery),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(orderCreated));

  @JsonKey(ignore: true)
  @override
  _$$_ReceivingStateCopyWith<_$_ReceivingState> get copyWith =>
      __$$_ReceivingStateCopyWithImpl<_$_ReceivingState>(this, _$identity);
}

abstract class _ReceivingState implements ReceivingState {
  const factory _ReceivingState(
      {final bool isDelivery,
      final bool loading,
      final bool error,
      final bool orderCreated}) = _$_ReceivingState;

  @override
  bool get isDelivery;
  @override
  bool get loading;
  @override
  bool get error;
  @override
  bool get orderCreated;
  @override
  @JsonKey(ignore: true)
  _$$_ReceivingStateCopyWith<_$_ReceivingState> get copyWith =>
      throw _privateConstructorUsedError;
}
