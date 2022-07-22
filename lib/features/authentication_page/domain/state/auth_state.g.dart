// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      phone: json['phone'] as String?,
      verificationId: json['verificationId'] as String? ?? '',
      error: json['error'] as bool? ?? false,
      loading: json['loading'] as bool? ?? false,
      auth: json['auth'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'verificationId': instance.verificationId,
      'error': instance.error,
      'loading': instance.loading,
      'auth': instance.auth,
    };
