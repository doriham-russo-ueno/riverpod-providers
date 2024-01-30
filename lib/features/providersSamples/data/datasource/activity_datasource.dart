import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter/core/client/api_client.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/activity_model.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/api_provider/api_provider.dart';

part 'activity_datasource.g.dart';

abstract class ActivityDatasource {
  Future<ActivityModel> getActivity({required String type});
}

@riverpod
ActivityDatasource activityDatasource(ActivityDatasourceRef ref) {
  return ActivityDatasourceImpl(
    client: ref.watch(apiClientProvider),
  );
}

class ActivityDatasourceImpl implements ActivityDatasource {
  final ApiClient client;

  ActivityDatasourceImpl({required this.client});
  @override
  Future<ActivityModel> getActivity({required String type}) async {
    final response = await client.getHttp(
      url: 'http://www.boredapi.com/api/activity?type=$type',
    );
    print('getting activity from bored API!');
    print(response.data);
    return ActivityModel.fromJson(response.data);
  }
}
