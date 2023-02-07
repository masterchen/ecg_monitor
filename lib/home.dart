import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "analytics.dart";
import "device_manager/device_manager.dart";
import "mine/mine.dart";
import "monitor.dart";
import "utils/constants.dart";

part "home.g.dart";

@riverpod
class _HomeModel extends _$HomeModel {
  @override
  int build() => 0;

  void set(int index) => state = index;
}

@riverpod
void _monitorClear(_MonitorClearRef ref) {
  ref.listen(_homeModelProvider, (prev, index) {
    if (index == 0) {
      ref.read(monitorModelProvider.notifier).clear();
    }
  });
}

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(_homeModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text(Strings.appName)),
      body: const [
        MonitorView(),
        AnalyticsView(),
        DeviceManagerView(),
        MineView(),
      ][index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: ref.read(_homeModelProvider.notifier).set,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.monitor_heart),
            label: Strings.monitor,
          ),
          NavigationDestination(
            icon: Icon(Icons.analytics),
            label: Strings.analytics,
          ),
          NavigationDestination(
            icon: Icon(Icons.device_hub),
            label: Strings.deviceManager,
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: Strings.mine,
          ),
        ],
      ),
    );
  }
}
