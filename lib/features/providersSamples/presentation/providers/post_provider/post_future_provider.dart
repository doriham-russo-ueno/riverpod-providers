import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/post_model.dart';
import 'package:riverpod_counter/features/providersSamples/data/repositories/post_repository_impl.dart';

////No necesitamos usar Either porque AsyncValue puede trabajar con los valores segun la respuesta del repositorio
final postFutureProvider = FutureProvider<List<PostModel>>((ref) async {
  final response = await ref.watch(postRepositoryProvider).getPosts();
  return response.fold(
    (l) => [],
    (postResponseModel) => postResponseModel.postList,
  );
});
