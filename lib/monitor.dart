import "package:fl_chart/fl_chart.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

import "device_manager/device.dart";
import "utils/constants.dart";

part "monitor.g.dart";

final _start = DateTime.now().millisecondsSinceEpoch;

@riverpod
class MonitorModel extends _$MonitorModel {
  @override
  List<FlSpot> build() => const [];

  void add(double y) {
    final x = (DateTime.now().millisecondsSinceEpoch - _start) / 1000;
    while (state.isNotEmpty && state.first.x < x - Numbers.duration / 1000) {
      state.removeAt(0);
    }
    state = [...state, FlSpot(x, y)];
  }

  void clear() => state = const [];
}

class MonitorView extends ConsumerStatefulWidget {
  const MonitorView({super.key});

  @override
  ConsumerState<MonitorView> createState() => _MonitorViewState();
}

class _MonitorViewState extends ConsumerState<MonitorView> {
  @override
  void initState() {
    super.initState();
    device.ecgStream.forEach(ref.read(monitorModelProvider.notifier).add);
  }

  @override
  Widget build(BuildContext context) {
    final points = ref.watch(monitorModelProvider);

    return LineChart(
      swapAnimationDuration: const Duration(), // disable animation
      LineChartData(
        minY: Numbers.minY,
        maxY: Numbers.maxY,
        minX: points.isEmpty ? 0 : points.last.x - Numbers.duration / 1000,
        maxX: points.isEmpty ? 0 : points.last.x,
        clipData: FlClipData.all(),
        titlesData: FlTitlesData(
          topTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
              interval: 1,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
              interval: 1,
            ),
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: points,
            color: Colors.red,
            dotData: FlDotData(show: false),
          ),
        ],
      ),
    );
  }
}
