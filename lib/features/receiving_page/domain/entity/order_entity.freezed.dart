// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  String get id => throw _privateConstructorUsedError;
  String get equipmentName => throw _privateConstructorUsedError;
  String get rentalName => throw _privateConstructorUsedError;
  String get dates => throw _privateConstructorUsedError;
  bool get isDelivery => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String equipmentName,
      String rentalName,
      String dates,
      bool isDelivery,
      String address,
      int period,
      int price});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res> implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  final OrderEntity _value;
  // ignore: unused_field
  final $Res Function(OrderEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? equipmentName = freezed,
    Object? rentalName = freezed,
    Object? dates = freezed,
    Object? isDelivery = freezed,
    Object? address = freezed,
    Object? period = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentName: equipmentName == freezed
          ? _value.equipmentName
          : equipmentName // ignore: cast_nullable_to_non_nullable
              as String,
      rentalName: rentalName == freezed
          ? _value.rentalName
          : rentalName // ignore: cast_nullable_to_non_nullable
              as String,
      dates: dates == freezed
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as String,
      isDelivery: isDelivery == freezed
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$_OrderEntityCopyWith(
          _$_OrderEntity value, $Res Function(_$_OrderEntity) then) =
      __$$_OrderEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String equipmentName,
      String rentalName,
      String dates,
      bool isDelivery,
      String address,
      int period,
      int price});
}

/// @nodoc
class __$$_OrderEntityCopyWithImpl<$Res> extends _$OrderEntityCopyWithImpl<$Res>
    implements _$$_OrderEntityCopyWith<$Res> {
  __$$_OrderEntityCopyWithImpl(
      _$_OrderEntity _value, $Res Function(_$_OrderEntity) _then)
      : super(_value, (v) => _then(v as _$_OrderEntity));

  @override
  _$_OrderEntity get _value => super._value as _$_OrderEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? equipmentName = freezed,
    Object? rentalName = freezed,
    Object? dates = freezed,
    Object? isDelivery = freezed,
    Object? address = freezed,
    Object? period = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_OrderEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      equipmentName: equipmentName == freezed
          ? _value.equipmentName
          : equipmentName // ignore: cast_nullable_to_non_nullable
              as String,
      rentalName: rentalName == freezed
          ? _value.rentalName
          : rentalName // ignore: cast_nullable_to_non_nullable
              as String,
      dates: dates == freezed
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as String,
      isDelivery: isDelivery == freezed
          ? _value.isDelivery
          : isDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderEntity implements _OrderEntity {
  const _$_OrderEntity(
      {this.id = '',
      this.equipmentName = '',
      this.rentalName = '',
      this.dates = '',
      this.isDelivery = true,
      this.address = '',
      this.period = 0,
      this.price = 0});

  factory _$_OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderEntityFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String equipmentName;
  @override
  @JsonKey()
  final String rentalName;
  @override
  @JsonKey()
  final String dates;
  @override
  @JsonKey()
  final bool isDelivery;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final int period;
  @override
  @JsonKey()
  final int price;

  @override
  String toString() {
    return 'OrderEntity(id: $id, equipmentName: $equipmentName, rentalName: $rentalName, dates: $dates, isDelivery: $isDelivery, address: $address, period: $period, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.equipmentName, equipmentName) &&
            const DeepCollectionEquality()
                .equals(other.rentalName, rentalName) &&
            const DeepCollectionEquality().equals(other.dates, dates) &&
            const DeepCollectionEquality()
                .equals(other.isDelivery, isDelivery) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.period, period) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(equipmentName),
      const DeepCollectionEquality().hash(rentalName),
      const DeepCollectionEquality().hash(dates),
      const DeepCollectionEquality().hash(isDelivery),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(period),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      __$$_OrderEntityCopyWithImpl<_$_OrderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderEntityToJson(
      this,
    );
  }
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
      {final String id,
      final String equipmentName,
      final String rentalName,
      final String dates,
      final bool isDelivery,
      final String address,
      final int period,
      final int price}) = _$_OrderEntity;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderEntity.fromJson;

  @override
  String get id;
  @override
  String get equipmentName;
  @override
  String get rentalName;
  @override
  String get dates;
  @override
  bool get isDelivery;
  @override
  String get address;
  @override
  int get period;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
