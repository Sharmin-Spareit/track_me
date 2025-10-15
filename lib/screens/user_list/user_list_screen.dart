import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:track_me/core/constants/space_constants.dart';
import 'package:track_me/core/constants/text_style_constants.dart';
import 'package:track_me/providers/user_provider.dart';
import 'package:track_me/screens/user_list/widgets/user_card.dart';
import 'package:track_me/widgets/common/error_widget.dart';
import 'package:track_me/widgets/common/loading_indicator.dart';

class UserListScreen extends ConsumerWidget {
  final String startLocation;
  final String endLocation;
  final String totalDistance;

  const UserListScreen({
    Key? key,
    required this.startLocation,
    required this.endLocation,
    required this.totalDistance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(fetchUsersProvider());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User List',
          style: AppTextStyles.bold16,
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Start: $startLocation'),
                AppSpaces.heightSmall,
                Text(
                  'End: $endLocation',
                ),
                AppSpaces.heightSmall,
                Text('Total distance: $totalDistance'),
              ],
            ),
          ),

          Expanded(
            child: usersAsync.when(
              data: (users) {
                if (users.isEmpty) return const Center(child: Text('No users found'));
                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: users.length,
                  itemBuilder: (context, index) => UserCard(user: users[index]),
                );
              },
              loading: () => const LoadingIndicator(),
              error: (e, st) => AppErrorWidget(
                message: e.toString(),
                onRetry: () => ref.refresh(fetchUsersProvider()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
