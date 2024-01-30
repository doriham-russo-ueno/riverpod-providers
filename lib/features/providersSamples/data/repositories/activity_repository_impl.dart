import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter/features/providersSamples/data/datasource/activity_datasource.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/activity_model.dart';
import 'package:riverpod_counter/features/providersSamples/domain/repositories/activity_repository.dart';

part 'activity_repository_impl.g.dart';

@riverpod
ActivityRepository activityRepository(ActivityRepositoryRef ref) {
  return ActivityRepositoryImpl(
    datasource: ref.watch(activityDatasourceProvider),
  );
}

class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityDatasource datasource;

  ActivityRepositoryImpl({required this.datasource});
  @override
  Future<ActivityModel> getActivity({required String type}) async {
    return await datasource.getActivity(type: type);
  }
}
