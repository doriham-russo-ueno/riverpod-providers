// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostResponseModelImpl _$$PostResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostResponseModelImpl(
      postList: (json['postList'] as List<dynamic>)
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostResponseModelImplToJson(
        _$PostResponseModelImpl instance) =>
    <String, dynamic>{
      'postList': instance.postList,
    };
