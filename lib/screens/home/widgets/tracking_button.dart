import 'package:flutter/material.dart';
import 'package:track_me/core/constants/text_style_constants.dart';

class TrackingButton extends StatelessWidget {
  final bool isTracking;
  final VoidCallback onStart;
  final VoidCallback onStop;
  const TrackingButton({super.key, 
    required this.isTracking,
    required this.onStart,
    required this.onStop,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: isTracking ? null : onStart,
          child: const Text('Start',style: AppTextStyles.bold14 ),
        ),
        ElevatedButton(
          onPressed: isTracking ? onStop : null,
          child: const Text('Stop',style: AppTextStyles.bold14 ),
        ),
      ],
    );
  }
}
