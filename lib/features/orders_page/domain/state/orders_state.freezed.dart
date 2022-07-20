// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersState {
  List<OrderEntity> get orders => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res>;
  $Res call({List<OrderEntity> orders, bool loading, bool error});
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res> implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  final OrdersState _value;
  // ignore: unused_field
  final $Res Function(OrdersState) _then;

  @override
  $Res call({
    Object? orders = freezed,
    Object? loading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_OrdersStateCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$_OrdersStateCopyWith(
          _$_OrdersState value, $Res Function(_$_OrdersState) then) =
      __$$_OrdersStateCopyWithImpl<$Res>;
  @override
  $Res call({List<OrderEntity> orders, bool loading, bool error});
}

/// @nodoc
class __$$_OrdersStateCopyWithImpl<$Res> extends _$OrdersStateCopyWithImpl<$Res>
    implements _$$_OrdersStateCopyWith<$Res> {
  __$$_OrdersStateCopyWithImpl(
      _$_OrdersState _value, $Res Function(_$_OrdersState) _then)
      : super(_value, (v) => _then(v as _$_OrdersState));

  @override
  _$_OrdersState get _value => super._value as _$_OrdersState;

  @override
  $Res call({
    Object? orders = freezed,
    Object? loading = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_OrdersState(
      orders: orders == freezed
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OrdersState implements _OrdersState {
  const _$_OrdersState(
      {final List<OrderEntity> orders = const [],
      this.loading = false,
      this.error = false})
      : _orders = orders;

  final List<OrderEntity> _orders;
  @override
  @JsonKey()
  List<OrderEntity> get orders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;

  @override
  String toString() {
    return 'OrdersState(orders: $orders, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersState &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      __$$_OrdersStateCopyWithImpl<_$_OrdersState>(this, _$identity);
}

abstract class _OrdersState implements OrdersState {
  const factory _OrdersState(
      {final List<OrderEntity> orders,
      final bool loading,
      final bool error}) = _$_OrdersState;

  @override
  List<OrderEntity> get orders;
  @override
  bool get loading;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}
