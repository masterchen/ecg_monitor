// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class History extends ConsumerWidget {
  const History({
    Key? key,
    this.initialTime,
  }) : super(key: key);

  final DateTime? initialTime;

  @override
  Widget build(
    BuildContext _context,
    WidgetRef _ref,
  ) =>
      history(
        _ref,
        initialTime: initialTime,
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DateTime?>('initialTime', initialTime));
  }
}
