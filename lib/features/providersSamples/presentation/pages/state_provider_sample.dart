import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/state_provider/basic_state_provider.dart';

class StateProviderSamplePage extends ConsumerWidget {
  const StateProviderSamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(counterProvider, (previous, next) {
      if (next == 5 || next == -5) {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text('Go back now!'),
            );
          },
        );
        ref.read(goBackFlagProvider.notifier).state =
            !ref.read(goBackFlagProvider);
      }
    });

    var flag = ref.watch(goBackFlagProvider);
    final value = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('State provider sample'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$value',
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: flag
                      ? () {
                          ref.read(counterProvider.notifier).state =
                              ref.read(counterProvider) - 1;
                        }
                      : null,
                  child: const Text('-'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: !flag
                      ? () {
                          ref.read(counterProvider.notifier).state =
                              ref.read(counterProvider) + 1;
                        }
                      : null,
                  child: const Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
