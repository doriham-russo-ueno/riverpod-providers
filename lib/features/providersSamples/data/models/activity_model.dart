import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    required String activity,
    required double accessibility,
    required String type,
    required int participants,
    required double price,
    required String key,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);

  factory ActivityModel.empty() {
    return const ActivityModel(
      activity: '',
      accessibility: 0.0,
      type: '',
      participants: 0,
      price: 0.0,
      key: '0',
    );
  }
}
