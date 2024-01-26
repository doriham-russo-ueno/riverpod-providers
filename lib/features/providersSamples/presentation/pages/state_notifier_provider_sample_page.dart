import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/todo_model.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/state_notifier_provider/todos_provider.dart';

///remember that state notifier is kinda legacy and it is recommended to use NotifierProvider or AsyncNotifierProvider

class StateNotifierProviderTodosSample extends ConsumerStatefulWidget {
  const StateNotifierProviderTodosSample({super.key});

  @override
  ConsumerState<StateNotifierProviderTodosSample> createState() =>
      _StateNotifierProviderTodosSampleState();
}

class _StateNotifierProviderTodosSampleState
    extends ConsumerState<StateNotifierProviderTodosSample> {
  final todosInputController = TextEditingController();

  @override
  void dispose() {
    todosInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final todosProvider = ref.watch(todosStateNotifierProvider);
    print(todosProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'State Notifier sample',
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AddTodoSectionWidget(
              todosInputController: todosInputController,
            ),
            SizedBox(
              height: 20,
            ),
            for (var todoEntry in todosProvider.entries)
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10,
                ),
                child: _TodoItemWidget(
                  todo: todoEntry.value,
                  onChanged: (value) {
                    ref
                        .read(todosStateNotifierProvider.notifier)
                        .toggleTodo(id: todoEntry.key);
                  },
                  onDeletePressed: () {
                    ref
                        .read(todosStateNotifierProvider.notifier)
                        .removeTodo(id: todoEntry.key);
                  },
                  todoText: todoEntry.value.description,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class AddTodoSectionWidget extends ConsumerWidget {
  const AddTodoSectionWidget({
    super.key,
    required this.todosInputController,
  });

  final TextEditingController todosInputController;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.cyan,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: TextFormField(
                controller: todosInputController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: IconButton(
              onPressed: () {
                ref
                    .read(todosStateNotifierProvider.notifier)
                    .addTodo(description: todosInputController.text);
                todosInputController.clear();
              },
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}

class _TodoItemWidget extends StatelessWidget {
  const _TodoItemWidget({
    super.key,
    required this.onChanged,
    required this.onDeletePressed,
    required this.todoText,
    required this.todo,
  });

  final ValueChanged<bool?>? onChanged;
  final void Function()? onDeletePressed;
  final String todoText;
  final TodoModel todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 132, 191, 221),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkbox(
            value: todo.completed,
            onChanged: onChanged,
          ),
          Text(todoText),
          IconButton.outlined(
            onPressed: onDeletePressed,
            icon: const Icon(
              Icons.delete,
              size: 20,
            ),
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(
                const Size(10, 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
