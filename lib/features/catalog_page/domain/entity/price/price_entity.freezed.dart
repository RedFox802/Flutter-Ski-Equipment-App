// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'price_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceEntity _$PriceEntityFromJson(Map<String, dynamic> json) {
  return _PriceEntity.fromJson(json);
}

/// @nodoc
mixin _$PriceEntity {
  int get price => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceEntityCopyWith<PriceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceEntityCopyWith<$Res> {
  factory $PriceEntityCopyWith(
          PriceEntity value, $Res Function(PriceEntity) then) =
      _$PriceEntityCopyWithImpl<$Res>;
  $Res call({int price, int period});
}

/// @nodoc
class _$PriceEntityCopyWithImpl<$Res> implements $PriceEntityCopyWith<$Res> {
  _$PriceEntityCopyWithImpl(this._value, this._then);

  final PriceEntity _value;
  // ignore: unused_field
  final $Res Function(PriceEntity) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PriceEntityCopyWith<$Res>
    implements $PriceEntityCopyWith<$Res> {
  factory _$$_PriceEntityCopyWith(
          _$_PriceEntity value, $Res Function(_$_PriceEntity) then) =
      __$$_PriceEntityCopyWithImpl<$Res>;
  @override
  $Res call({int price, int period});
}

/// @nodoc
class __$$_PriceEntityCopyWithImpl<$Res> extends _$PriceEntityCopyWithImpl<$Res>
    implements _$$_PriceEntityCopyWith<$Res> {
  __$$_PriceEntityCopyWithImpl(
      _$_PriceEntity _value, $Res Function(_$_PriceEntity) _then)
      : super(_value, (v) => _then(v as _$_PriceEntity));

  @override
  _$_PriceEntity get _value => super._value as _$_PriceEntity;

  @override
  $Res call({
    Object? price = freezed,
    Object? period = freezed,
  }) {
    return _then(_$_PriceEntity(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceEntity implements _PriceEntity {
  const _$_PriceEntity({this.price = 0, this.period = 0});

  factory _$_PriceEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PriceEntityFromJson(json);

  @override
  @JsonKey()
  final int price;
  @override
  @JsonKey()
  final int period;

  @override
  String toString() {
    return 'PriceEntity(price: $price, period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceEntity &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.period, period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(period));

  @JsonKey(ignore: true)
  @override
  _$$_PriceEntityCopyWith<_$_PriceEntity> get copyWith =>
      __$$_PriceEntityCopyWithImpl<_$_PriceEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceEntityToJson(
      this,
    );
  }
}

abstract class _PriceEntity implements PriceEntity {
  const factory _PriceEntity({final int price, final int period}) =
      _$_PriceEntity;

  factory _PriceEntity.fromJson(Map<String, dynamic> json) =
      _$_PriceEntity.fromJson;

  @override
  int get price;
  @override
  int get period;
  @override
  @JsonKey(ignore: true)
  _$$_PriceEntityCopyWith<_$_PriceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
