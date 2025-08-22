import 'package:api_test/src/infrastructure/services/dio_client.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  final DioClient dioClient;
  AuthRepository(this.dioClient);

  Future<String> login(String email, String password) async {
    try {
      final response = await dioClient.dio.post(
        "login",
        data: {"email": email, "password": password},
      );
      return response.data['token'];
    } on DioException catch (e) {
      throw Exception(e.response?.data['error'] ?? "Login failed");
    }
  }


  Future<void> testLogin() async {
    try {
      final token = await login("eve.holt@reqres.in", "cityslicka");
      print("Login successful! Token: $token");
    } catch (e) {
      print("Login failed: $e");
    }
  }
}
