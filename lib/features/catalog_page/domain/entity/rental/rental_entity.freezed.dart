// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rental_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RentalEntity _$RentalEntityFromJson(Map<String, dynamic> json) {
  return _RentalEntity.fromJson(json);
}

/// @nodoc
mixin _$RentalEntity {
  String get name => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get hours => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ProductEntity> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RentalEntityCopyWith<RentalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalEntityCopyWith<$Res> {
  factory $RentalEntityCopyWith(
          RentalEntity value, $Res Function(RentalEntity) then) =
      _$RentalEntityCopyWithImpl<$Res>;
  $Res call(
      {String name,
      double rating,
      String phone,
      String address,
      String hours,
      String description,
      List<ProductEntity> products});
}

/// @nodoc
class _$RentalEntityCopyWithImpl<$Res> implements $RentalEntityCopyWith<$Res> {
  _$RentalEntityCopyWithImpl(this._value, this._then);

  final RentalEntity _value;
  // ignore: unused_field
  final $Res Function(RentalEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? hours = freezed,
    Object? description = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$_RentalEntityCopyWith<$Res>
    implements $RentalEntityCopyWith<$Res> {
  factory _$$_RentalEntityCopyWith(
          _$_RentalEntity value, $Res Function(_$_RentalEntity) then) =
      __$$_RentalEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      double rating,
      String phone,
      String address,
      String hours,
      String description,
      List<ProductEntity> products});
}

/// @nodoc
class __$$_RentalEntityCopyWithImpl<$Res>
    extends _$RentalEntityCopyWithImpl<$Res>
    implements _$$_RentalEntityCopyWith<$Res> {
  __$$_RentalEntityCopyWithImpl(
      _$_RentalEntity _value, $Res Function(_$_RentalEntity) _then)
      : super(_value, (v) => _then(v as _$_RentalEntity));

  @override
  _$_RentalEntity get _value => super._value as _$_RentalEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? hours = freezed,
    Object? description = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_RentalEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RentalEntity implements _RentalEntity {
  const _$_RentalEntity(
      {this.name = '',
      this.rating = 0,
      this.phone = '',
      this.address = '',
      this.hours = '',
      this.description = '',
      final List<ProductEntity> products = const []})
      : _products = products;

  factory _$_RentalEntity.fromJson(Map<String, dynamic> json) =>
      _$$_RentalEntityFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String hours;
  @override
  @JsonKey()
  final String description;
  final List<ProductEntity> _products;
  @override
  @JsonKey()
  List<ProductEntity> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'RentalEntity(name: $name, rating: $rating, phone: $phone, address: $address, hours: $hours, description: $description, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RentalEntity &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$_RentalEntityCopyWith<_$_RentalEntity> get copyWith =>
      __$$_RentalEntityCopyWithImpl<_$_RentalEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RentalEntityToJson(
      this,
    );
  }
}

abstract class _RentalEntity implements RentalEntity {
  const factory _RentalEntity(
      {final String name,
      final double rating,
      final String phone,
      final String address,
      final String hours,
      final String description,
      final List<ProductEntity> products}) = _$_RentalEntity;

  factory _RentalEntity.fromJson(Map<String, dynamic> json) =
      _$_RentalEntity.fromJson;

  @override
  String get name;
  @override
  double get rating;
  @override
  String get phone;
  @override
  String get address;
  @override
  String get hours;
  @override
  String get description;
  @override
  List<ProductEntity> get products;
  @override
  @JsonKey(ignore: true)
  _$$_RentalEntityCopyWith<_$_RentalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
