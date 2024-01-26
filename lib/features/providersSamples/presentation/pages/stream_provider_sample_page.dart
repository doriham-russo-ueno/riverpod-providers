import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/providers/ticker_provider/ticket_provider.dart';

class TickerProvider extends ConsumerWidget {
  const TickerProvider({super.key});

  String _zeroPaddedTwoDigits(double ticks) {
    return ticks.floor().toString().padLeft(2, '0');
  }

  String _formatTimer(int ticks) {
    final String minutes = _zeroPaddedTwoDigits((ticks / 60) % 60);
    final String seconds = _zeroPaddedTwoDigits(ticks % 60);
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticker = ref.watch(tickerStreamProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stream Provider sample',
        ),
      ),
      body: Center(
        child: ticker.when(
          data: (tick) => Text(
            _formatTimer(tick),
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          error: (error, stackTrace) => Text(
            'Error while reading streamProvider ${error.toString()}',
          ),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
