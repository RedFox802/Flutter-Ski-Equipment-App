// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) {
  return _ProductEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductEntity {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<PriceEntity> get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductEntityCopyWith<ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res>;
  $Res call(
      {String name, String description, String type, List<PriceEntity> prices});
}

/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  final ProductEntity _value;
  // ignore: unused_field
  final $Res Function(ProductEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? prices = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$$_ProductEntityCopyWith(
          _$_ProductEntity value, $Res Function(_$_ProductEntity) then) =
      __$$_ProductEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String description, String type, List<PriceEntity> prices});
}

/// @nodoc
class __$$_ProductEntityCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res>
    implements _$$_ProductEntityCopyWith<$Res> {
  __$$_ProductEntityCopyWithImpl(
      _$_ProductEntity _value, $Res Function(_$_ProductEntity) _then)
      : super(_value, (v) => _then(v as _$_ProductEntity));

  @override
  _$_ProductEntity get _value => super._value as _$_ProductEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? prices = freezed,
  }) {
    return _then(_$_ProductEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      prices: prices == freezed
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<PriceEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductEntity implements _ProductEntity {
  const _$_ProductEntity(
      {this.name = '',
      this.description = '',
      this.type = '',
      final List<PriceEntity> prices = const []})
      : _prices = prices;

  factory _$_ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProductEntityFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String type;
  final List<PriceEntity> _prices;
  @override
  @JsonKey()
  List<PriceEntity> get prices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  String toString() {
    return 'ProductEntity(name: $name, description: $description, type: $type, prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductEntity &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      __$$_ProductEntityCopyWithImpl<_$_ProductEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductEntityToJson(
      this,
    );
  }
}

abstract class _ProductEntity implements ProductEntity {
  const factory _ProductEntity(
      {final String name,
      final String description,
      final String type,
      final List<PriceEntity> prices}) = _$_ProductEntity;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductEntity.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get type;
  @override
  List<PriceEntity> get prices;
  @override
  @JsonKey(ignore: true)
  _$$_ProductEntityCopyWith<_$_ProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
