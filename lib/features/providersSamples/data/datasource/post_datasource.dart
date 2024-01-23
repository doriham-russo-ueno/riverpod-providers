import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter/core/client/api_client.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/post_model.dart';

import 'package:riverpod_counter/features/providersSamples/data/models/post_response_model.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/api_provider/api_provider.dart';

abstract class PostDatasource {
  Future<PostResponseModel> getPosts();
  Future<PostModel> getPostDetails({
    required String id,
  });
}

///provider for datasource
final PostDatasourceProvider = Provider<PostDatasource>((ref) {
  return PostRemoteDatasource(apiClient: ref.watch(apiClientProvider));
});

class PostRemoteDatasource implements PostDatasource {
  final ApiClient apiClient;

  PostRemoteDatasource({required this.apiClient});
  @override
  Future<PostResponseModel> getPosts() async {
    final response = await apiClient.getHttp(
        url: 'https://jsonplaceholder.typicode.com/posts');
    List<dynamic> jsonResponse = response.data;
    List<PostModel> postList = [];
    for (var element in jsonResponse) {
      print(element);
      postList.add(
        PostModel.fromJson(element),
      );
    }
    print(postList.length);
    return PostResponseModel(postList: postList);
  }

  @override
  Future<PostModel> getPostDetails({required String id}) async {
    final response = await apiClient.getHttp(
        url: 'https://jsonplaceholder.typicode.com/posts/$id');
    print('hello there, trying to get post details!');
    return PostModel.fromJson(response.data);
  }
}
