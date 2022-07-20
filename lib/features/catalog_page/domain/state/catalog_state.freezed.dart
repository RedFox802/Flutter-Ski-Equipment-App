// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'catalog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogState {
  List<RentalEntity> get rentals => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogStateCopyWith<CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res>;
  $Res call({List<RentalEntity> rentals, bool loading, bool error});
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res> implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

  final CatalogState _value;
  // ignore: unused_field
  final $Res Function(CatalogState) _then;

  @override
  $Res call({
    Object? rentals = freezed,
    Object? loading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      rentals: rentals == freezed
          ? _value.rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<RentalEntity>,
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
abstract class _$$_CatalogStateCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory _$$_CatalogStateCopyWith(
          _$_CatalogState value, $Res Function(_$_CatalogState) then) =
      __$$_CatalogStateCopyWithImpl<$Res>;
  @override
  $Res call({List<RentalEntity> rentals, bool loading, bool error});
}

/// @nodoc
class __$$_CatalogStateCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res>
    implements _$$_CatalogStateCopyWith<$Res> {
  __$$_CatalogStateCopyWithImpl(
      _$_CatalogState _value, $Res Function(_$_CatalogState) _then)
      : super(_value, (v) => _then(v as _$_CatalogState));

  @override
  _$_CatalogState get _value => super._value as _$_CatalogState;

  @override
  $Res call({
    Object? rentals = freezed,
    Object? loading = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CatalogState(
      rentals: rentals == freezed
          ? _value._rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<RentalEntity>,
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

class _$_CatalogState implements _CatalogState {
  const _$_CatalogState(
      {final List<RentalEntity> rentals = const [],
      this.loading = false,
      this.error = false})
      : _rentals = rentals;

  final List<RentalEntity> _rentals;
  @override
  @JsonKey()
  List<RentalEntity> get rentals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rentals);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;

  @override
  String toString() {
    return 'CatalogState(rentals: $rentals, loading: $loading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogState &&
            const DeepCollectionEquality().equals(other._rentals, _rentals) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rentals),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      __$$_CatalogStateCopyWithImpl<_$_CatalogState>(this, _$identity);
}

abstract class _CatalogState implements CatalogState {
  const factory _CatalogState(
      {final List<RentalEntity> rentals,
      final bool loading,
      final bool error}) = _$_CatalogState;

  @override
  List<RentalEntity> get rentals;
  @override
  bool get loading;
  @override
  bool get error;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}
