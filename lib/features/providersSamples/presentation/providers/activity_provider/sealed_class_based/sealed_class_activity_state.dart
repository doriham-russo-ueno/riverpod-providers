import 'package:riverpod_counter/features/providersSamples/data/models/activity_model.dart';

sealed class SealedActivityState {}

class SealedActivityInitialState extends SealedActivityState {}

class SealedActivityLoadingState extends SealedActivityState {}

class SealedActivitySuccessState extends SealedActivityState {
  final ActivityModel activityModel;
  SealedActivitySuccessState({required this.activityModel});
}

class SealedActivityErrorState extends SealedActivityState {
  final String error;

  SealedActivityErrorState({required this.error});
}
