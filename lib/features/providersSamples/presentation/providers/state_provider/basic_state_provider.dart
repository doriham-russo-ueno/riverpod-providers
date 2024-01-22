import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider.autoDispose<int>((ref) {
  ref.onDispose(() {
    print('[counterProvider] disposed');
  });
  return 0;
});

final CounterFamilyProvider =
    Provider.family.autoDispose<int, int>((ref, initialValue) {
  return initialValue;
});

final goBackFlagProvider = StateProvider.autoDispose<bool>((ref) => false);
