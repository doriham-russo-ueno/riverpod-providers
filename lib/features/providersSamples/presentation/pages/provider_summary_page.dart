import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/core/routes/app_routes.dart';

class ProviderSummaryPage extends ConsumerWidget {
  const ProviderSummaryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: _ProviderButtonSampleWidget(
                title: 'Simple Provider Sample',
              ),
            ),
            onTap: () {
              ref.read(appRouterProvider).push('/provider');
            },
          ),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: _ProviderButtonSampleWidget(
                title: 'Simple state provider sample',
              ),
            ),
            onTap: () {
              ref.read(appRouterProvider).push('/stateprovider');
            },
          ),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: _ProviderButtonSampleWidget(
                title: 'Future Provider API fetch sample',
              ),
            ),
            onTap: () {
              ref.read(appRouterProvider).push('/futureprovider');
            },
          ),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: _ProviderButtonSampleWidget(
                title: 'StreamProvider sample',
              ),
            ),
            onTap: () {
              ref.read(appRouterProvider).push('/streamprovider');
            },
          ),
          InkWell(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: _ProviderButtonSampleWidget(
                title: 'State Notifier Provider sample',
              ),
            ),
            onTap: () {
              ref.read(appRouterProvider).push('/statenotifier');
            },
          )
        ],
      ),
    );
  }
}

class _ProviderButtonSampleWidget extends StatelessWidget {
  const _ProviderButtonSampleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
