import 'package:dartz/dartz.dart';
import 'package:riverpod_counter/core/error/error_model.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/post_response_model.dart';

abstract class PostRepository {
  Future<Either<ErrorModel, PostResponseModel>> getPosts();
}
