import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/todo_model.dart';

class TodosStateNotifier extends StateNotifier<Map<String, TodoModel>> {
  TodosStateNotifier() : super(<String, TodoModel>{});

  void addTodo({
    required String description,
  }) {
    final newTodo = TodoModel.add(description: description);
    state = {
      ...state,
      ...{newTodo.id: newTodo}
    };
  }

  void toggleTodo({
    required String id,
  }) {
    if (state.containsKey(id)) {
      TodoModel todo = state[id]!.copyWith(
        completed: !state[id]!.completed,
      );
      state = {
        ...state..update(todo.id, (value) => todo),
      };
    }
  }

  void removeTodo({required String id}) {
    state = {
      ...state..removeWhere((key, value) => key == id),
    };
  }
}

final todosStateNotifierProvider = StateNotifierProvider.autoDispose<
    TodosStateNotifier, Map<String, TodoModel>>((ref) {
  return TodosStateNotifier();
});
