import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/post_model.dart';

part 'post_response_model.freezed.dart';
part 'post_response_model.g.dart';

@freezed
class PostResponseModel with _$PostResponseModel {
  const factory PostResponseModel({
    required List<PostModel> postList,
  }) = _PostResponseModel;

  factory PostResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PostResponseModelFromJson(json);
}
