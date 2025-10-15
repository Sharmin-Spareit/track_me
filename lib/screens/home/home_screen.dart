import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:track_me/core/utils/location_helper.dart';
import 'package:track_me/providers/tracking_provider.dart';
import 'package:track_me/screens/home/widgets/continue_button.dart';
import 'package:track_me/screens/home/widgets/tracking_button.dart';
import 'package:track_me/screens/home/widgets/trip_summary.dart';
import 'package:track_me/screens/user_list/user_list_screen.dart';
import 'package:track_me/widgets/common/confirmation_dialog.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trackingState = ref.watch(trackingNotifierProvider);

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        
        final shouldPop = await showConfirmationDialog(
          context: context,
          title: 'Exit App',
          message: 'Are you sure you want to exit?',
        );

        if (shouldPop == true && context.mounted) {
        SystemNavigator.pop();        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TrackMe'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                
                TrackingButton(
                  isTracking: trackingState.isTracking,
                  onStart: () async {
                    await ref.read(trackingNotifierProvider.notifier).startTracking();
                  },
                  onStop: () async {
                    await ref.read(trackingNotifierProvider.notifier).stopTracking();
                  },
                ),

                const SizedBox(height: 32),

                if (!trackingState.isTracking && trackingState.startLocation != null)
                  TripSummary(
                    start: trackingState.startLocation!,
                    end: trackingState.endLocation ?? 'N/A',
                    total: LocationHelper.formatDistance(trackingState.totalDistance),
                  ),

                const Spacer(),

                if (!trackingState.isTracking && trackingState.startLocation != null)
                  ContinueButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserListScreen(
                            startLocation: trackingState.startLocation!,
                            endLocation: trackingState.endLocation ?? 'N/A',
                            totalDistance: LocationHelper.formatDistance(trackingState.totalDistance),
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
