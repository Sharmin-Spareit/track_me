import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:track_me/models/user.dart';
import 'package:track_me/repositories/user_repository.dart';
import 'package:track_me/services/api_service.dart';


part 'user_provider.g.dart';

@riverpod
Future<List<User>> fetchUsers(FetchUsersRef ref, {int page = 1}) async {
  final repository = ref.read(userRepositoryProvider);
  return repository.fetchUsers(page: page);
}

@riverpod

ApiService apiService(ApiServiceRef ref) {
  return ApiService();
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  final api = ref.watch(apiServiceProvider);
  return UserRepository(api);
}
