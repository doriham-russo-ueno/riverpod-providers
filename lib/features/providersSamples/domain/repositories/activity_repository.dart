import 'package:riverpod_counter/features/providersSamples/data/models/activity_model.dart';

abstract class ActivityRepository {
  Future<ActivityModel> getActivity({
    required String type,
  });
}
