import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_state.freezed.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState({
    @Default(false) final bool loading,
    @Default(false) final bool error,
    @Default(false) final bool ready,
  }) = _ReviewState;
}
