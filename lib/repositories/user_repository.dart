

import 'package:track_me/core/exceptions/app_exceptions.dart';
import 'package:track_me/models/user.dart';
import 'package:track_me/services/api_service.dart';

class UserRepository {
  final ApiService _apiService;

  UserRepository(this._apiService);

  Future<List<User>> fetchUsers({int page = 1}) async {
    try {
      final response = await _apiService.get(
        'users',
        queryParams: {'page': page},
      );

      if (response.data is List) {
        return (response.data as List)
            .map((json) => User.fromJson(json as Map<String, dynamic>))
            .toList();
      }

      throw ApiException('Invalid response format');
    } catch (e) {
      if (e is ApiException) rethrow;
      throw ApiException('Failed to fetch users: $e');
    }
  }
}
