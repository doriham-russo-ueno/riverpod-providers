import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/features/providersSamples/data/models/activity_model.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/activity_provider/activity_provider.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/activity_provider/enum_acitivity_state.dart';
import 'package:bulleted_list/bulleted_list.dart';

class NotifierProviderSamplePage1 extends ConsumerWidget {
  const NotifierProviderSamplePage1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activityState = ref.watch(enumActivityProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotifierProvider Enum '),
      ),
      body: switch (activityState.status) {
        ActivityStatus.initial => ElevatedButton(
            onPressed: () {
              ref.read(enumActivityProvider.notifier).getAtivity();
            },
            child: const Text('Load Some Activity'),
          ),
        ActivityStatus.loading => const Center(
            child: CircularProgressIndicator(),
          ),
        ActivityStatus.loadded =>
          ActivityWidget(activity: activityState.activity),
        ActivityStatus.error => Text(activityState.errorMessage),
        (_) => null,
      },
    );
  }
}

class ActivityWidget extends ConsumerWidget {
  const ActivityWidget({
    super.key,
    required this.activity,
  });

  final ActivityModel activity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text(
              activity.activity,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            BulletedList(
              style: TextStyle(
                fontSize: 15,
              ),
              bullet: const Icon(
                Icons.check,
                color: Colors.green,
              ),
              listItems: [
                'activity: ${activity.activity}',
                'accesibility: ${activity.accessibility}',
                'participants: ${activity.participants}',
                'price: ${activity.price}',
              ],
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(enumActivityProvider.notifier).getAtivity();
              },
              child: Text('Get Another'),
            ),
          ],
        ),
      ),
    );
  }
}
