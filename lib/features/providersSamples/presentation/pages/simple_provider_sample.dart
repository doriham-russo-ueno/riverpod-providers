import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/simple_provider/simple_provider.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/simple_provider/simple_provider_anotate.dart';

class SimpleProviderSample extends ConsumerWidget {
  const SimpleProviderSample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var nameProvider = ref.watch(greetingsProvider(username: 'Daniel'));
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Provider Sample'),
      ),
      body: Center(
        child: Text(nameProvider),
      ),
    );
  }
}
