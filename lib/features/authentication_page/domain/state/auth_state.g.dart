// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      verificationId: json['verificationId'] as String? ?? '',
      error: json['error'] as bool? ?? false,
      auth: json['auth'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'verificationId': instance.verificationId,
      'error': instance.error,
      'auth': instance.auth,
    };
