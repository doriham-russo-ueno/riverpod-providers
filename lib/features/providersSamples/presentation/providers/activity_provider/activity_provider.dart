import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter/features/providersSamples/data/repositories/activity_repository_impl.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/activity_provider/enum_acitivity_state.dart';

part 'activity_provider.g.dart';

@riverpod
class EnumActivity extends _$EnumActivity {
  @override
  EnumActivityState build() {
    ref.onDispose(() {
      print('[enumAcivityProvider] disposed!');
    });
    return EnumActivityState.initial();
  }

  final _acitivityTypes = [
    "education",
    "recreational",
    "social",
    "diy",
    "charity",
    "cooking",
    "relaxation",
    "music",
    "busywork"
  ];

  Future<void> getAtivity() async {
    state = state.copyWith(status: ActivityStatus.loading);
    final index = Random().nextInt(_acitivityTypes.length);
    try {
      final response = await ref.read(activityRepositoryProvider).getActivity(
            type: _acitivityTypes[index],
          );
      state = state.copyWith(
        status: ActivityStatus.loadded,
        activity: response,
      );
    } catch (e) {
      state = state.copyWith(
        status: ActivityStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
