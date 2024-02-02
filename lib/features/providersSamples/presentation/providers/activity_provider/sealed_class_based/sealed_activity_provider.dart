import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter/features/providersSamples/data/repositories/activity_repository_impl.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/activity_provider/sealed_class_based/sealed_class_activity_state.dart';

part 'sealed_activity_provider.g.dart';

@riverpod
class SealedActivityNotifier extends _$SealedActivityNotifier {
  @override
  SealedActivityState build() {
    return SealedActivityInitialState();
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
    state = SealedActivityLoadingState();
    final index = Random().nextInt(_acitivityTypes.length);
    try {
      final response = await ref.read(activityRepositoryProvider).getActivity(
            type: _acitivityTypes[index],
          );
      state = SealedActivitySuccessState(activityModel: response);
    } catch (e) {
      state = SealedActivityErrorState(error: e.toString());
    }
  }
}
