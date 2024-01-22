import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/pages/future_provider_sample_page.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/pages/provider_summary_page.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/pages/simple_provider_sample.dart';
import 'package:riverpod_counter/features/providersSamples/presentation/pages/state_provider_sample.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ProviderSummaryPage(),
    ),
    GoRoute(
      path: '/provider',
      builder: (context, state) => const SimpleProviderSample(),
    ),
    GoRoute(
      path: '/stateprovider',
      builder: (context, state) => const StateProviderSamplePage(),
    ),
    GoRoute(
      path: '/futureprovider',
      builder: (context, state) => const FutureProviderSamplePage(),
    ),
  ]);
});
