import 'package:flutter/material.dart';
import 'package:track_me/core/constants/space_constants.dart';
import 'package:track_me/core/constants/text_style_constants.dart';

class TripSummary extends StatelessWidget {
  final String start;
  final String end;
  final String total;
  const TripSummary(
      {required this.start, required this.end, required this.total});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: const Text(
          'Trip Summary',
          style: AppTextStyles.bold14,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpaces.heightSmall,
            Text('Start: $start'),
            AppSpaces.heightSmall,
            Text('End: $end'),
            AppSpaces.heightSmall,
            Text('Total: $total km'),
          ],
        ),
      ),
    );
  }
}
