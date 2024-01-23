import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/post_model.dart';
import 'package:riverpod_counter/features/providersSamples/data/repositories/post_repository_impl.dart';

part 'post_future_provider.g.dart';

////No necesitamos usar Either porque AsyncValue puede trabajar con los valores segun la respuesta del repositorio
final postFutureProvider = FutureProvider<List<PostModel>>((ref) async {
  final response = await ref.watch(postRepositoryProvider).getPosts();
  return response.fold(
    (l) => [],
    (postResponseModel) => postResponseModel.postList,
  );
});

@riverpod
FutureOr<PostModel> getPostDetails(
  GetPostDetailsRef ref, {
  required String postId,
}) async {
  final response =
      await ref.watch(postRepositoryProvider).getPostDetails(postId: postId);
  ref.keepAlive();
  return response;
}
