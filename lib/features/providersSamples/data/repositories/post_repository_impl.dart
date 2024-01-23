import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter/core/error/error_model.dart';
import 'package:riverpod_counter/features/providersSamples/data/datasource/post_datasource.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/post_model.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/post_response_model.dart';
import 'package:riverpod_counter/features/providersSamples/domain/repositories/post_repository.dart';

///provider for repository
final postRepositoryProvider = Provider<PostRepository>((ref) {
  return PostRepositoryImpl(
    postDatasource: ref.watch(PostDatasourceProvider),
  );
});

class PostRepositoryImpl implements PostRepository {
  final PostDatasource postDatasource;

  PostRepositoryImpl({required this.postDatasource});

  @override
  Future<Either<ErrorModel, PostResponseModel>> getPosts() async {
    try {
      final PostResponseModel postResponseModel =
          await postDatasource.getPosts();
      return right(postResponseModel);
    } catch (e) {
      return left(
        ErrorModel(message: e.toString(), errorCode: '10'),
      );
    }
  }

  @override
  Future<PostModel> getPostDetails({required String postId}) async {
    return await postDatasource.getPostDetails(id: postId);
  }
}
