import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
part 'todo_model.freezed.dart';

Uuid uuid = const Uuid();

@freezed
class TodoModel with _$TodoModel {
  const factory TodoModel({
    required String id,
    required String description,
    @Default(false) bool completed,
  }) = _TodoModel;

  factory TodoModel.add({required String description}) {
    return TodoModel(
      id: uuid.v4(),
      description: description,
    );
  }
}
