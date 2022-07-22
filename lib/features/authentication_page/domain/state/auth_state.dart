import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    final String? phone,
    @Default('') final String verificationId,
    @Default(false) final bool error,
    @Default(false) final bool loading,
    @Default(false) final bool auth,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
