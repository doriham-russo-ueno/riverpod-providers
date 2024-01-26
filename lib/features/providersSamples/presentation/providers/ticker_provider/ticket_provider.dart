import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ticket_provider.g.dart';

///manual stream provider
final tickerStreamProviderManual = StreamProvider<int>((ref) {
  ref.onDispose(() {
    print('[tickerStreamProvider] disposed');
  });
  return Stream.periodic(const Duration(seconds: 1), (t) => t + 1).take(120);
});

///auto generated stream provider
@Riverpod(keepAlive: true)
Stream<int> tickerStream(TickerStreamRef ref) {
  return Stream.periodic(const Duration(seconds: 1), (t) => t + 1).take(120);
}
