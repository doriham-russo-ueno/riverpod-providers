import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/activity_model.dart';

part 'enum_acitivity_state.freezed.dart';

enum ActivityStatus {
  loading,
  loadded,
  success,
  error,
  initial,
}

@freezed
class EnumActivityState with _$EnumActivityState {
  const factory EnumActivityState({
    required ActivityStatus status,
    required ActivityModel activity,
    required String errorMessage,
  }) = _EnumActivityState;

  factory EnumActivityState.initial() => EnumActivityState(
        status: ActivityStatus.initial,
        activity: ActivityModel.empty(),
        errorMessage: '',
      );
}
