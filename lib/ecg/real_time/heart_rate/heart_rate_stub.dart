import "package:flutter/material.dart";

import "../../../utils/constants/strings.dart" as str;

class HeartRate extends StatelessWidget {
  const HeartRate({super.key});

  @override
  Widget build(BuildContext context) =>
      const Text(str.heartRateNotAvailableOnWeb);
}
