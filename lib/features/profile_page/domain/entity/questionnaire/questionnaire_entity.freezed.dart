// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questionnaire_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionnaireEntity _$QuestionnaireEntityFromJson(Map<String, dynamic> json) {
  return _QuestionnaireEntity.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireEntity {
  String get userId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  String get height => throw _privateConstructorUsedError;
  String get shoeSize => throw _privateConstructorUsedError;
  bool get isExperienced => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireEntityCopyWith<QuestionnaireEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireEntityCopyWith<$Res> {
  factory $QuestionnaireEntityCopyWith(
          QuestionnaireEntity value, $Res Function(QuestionnaireEntity) then) =
      _$QuestionnaireEntityCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String id,
      String name,
      String weight,
      String height,
      String shoeSize,
      bool isExperienced});
}

/// @nodoc
class _$QuestionnaireEntityCopyWithImpl<$Res>
    implements $QuestionnaireEntityCopyWith<$Res> {
  _$QuestionnaireEntityCopyWithImpl(this._value, this._then);

  final QuestionnaireEntity _value;
  // ignore: unused_field
  final $Res Function(QuestionnaireEntity) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? shoeSize = freezed,
    Object? isExperienced = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      shoeSize: shoeSize == freezed
          ? _value.shoeSize
          : shoeSize // ignore: cast_nullable_to_non_nullable
              as String,
      isExperienced: isExperienced == freezed
          ? _value.isExperienced
          : isExperienced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionnaireEntityCopyWith<$Res>
    implements $QuestionnaireEntityCopyWith<$Res> {
  factory _$$_QuestionnaireEntityCopyWith(_$_QuestionnaireEntity value,
          $Res Function(_$_QuestionnaireEntity) then) =
      __$$_QuestionnaireEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      String id,
      String name,
      String weight,
      String height,
      String shoeSize,
      bool isExperienced});
}

/// @nodoc
class __$$_QuestionnaireEntityCopyWithImpl<$Res>
    extends _$QuestionnaireEntityCopyWithImpl<$Res>
    implements _$$_QuestionnaireEntityCopyWith<$Res> {
  __$$_QuestionnaireEntityCopyWithImpl(_$_QuestionnaireEntity _value,
      $Res Function(_$_QuestionnaireEntity) _then)
      : super(_value, (v) => _then(v as _$_QuestionnaireEntity));

  @override
  _$_QuestionnaireEntity get _value => super._value as _$_QuestionnaireEntity;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? shoeSize = freezed,
    Object? isExperienced = freezed,
  }) {
    return _then(_$_QuestionnaireEntity(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      shoeSize: shoeSize == freezed
          ? _value.shoeSize
          : shoeSize // ignore: cast_nullable_to_non_nullable
              as String,
      isExperienced: isExperienced == freezed
          ? _value.isExperienced
          : isExperienced // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireEntity implements _QuestionnaireEntity {
  const _$_QuestionnaireEntity(
      {this.userId = '',
      this.id = '',
      this.name = '',
      this.weight = '',
      this.height = '',
      this.shoeSize = '',
      this.isExperienced = false});

  factory _$_QuestionnaireEntity.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireEntityFromJson(json);

  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String weight;
  @override
  @JsonKey()
  final String height;
  @override
  @JsonKey()
  final String shoeSize;
  @override
  @JsonKey()
  final bool isExperienced;

  @override
  String toString() {
    return 'QuestionnaireEntity(userId: $userId, id: $id, name: $name, weight: $weight, height: $height, shoeSize: $shoeSize, isExperienced: $isExperienced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireEntity &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.shoeSize, shoeSize) &&
            const DeepCollectionEquality()
                .equals(other.isExperienced, isExperienced));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(shoeSize),
      const DeepCollectionEquality().hash(isExperienced));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionnaireEntityCopyWith<_$_QuestionnaireEntity> get copyWith =>
      __$$_QuestionnaireEntityCopyWithImpl<_$_QuestionnaireEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireEntityToJson(
      this,
    );
  }
}

abstract class _QuestionnaireEntity implements QuestionnaireEntity {
  const factory _QuestionnaireEntity(
      {final String userId,
      final String id,
      final String name,
      final String weight,
      final String height,
      final String shoeSize,
      final bool isExperienced}) = _$_QuestionnaireEntity;

  factory _QuestionnaireEntity.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireEntity.fromJson;

  @override
  String get userId;
  @override
  String get id;
  @override
  String get name;
  @override
  String get weight;
  @override
  String get height;
  @override
  String get shoeSize;
  @override
  bool get isExperienced;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireEntityCopyWith<_$_QuestionnaireEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
