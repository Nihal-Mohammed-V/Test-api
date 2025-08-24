import 'package:api_test/src/domain/models/login_model/login_model.dart';
import 'package:api_test/src/infrastructure/services/dio_client.dart';
import 'package:dio/dio.dart';

class AuthRepository {
  final DioClient dioClient;
  AuthRepository(this.dioClient);

  Future<LoginModel> login(String email, String password) async {
    try {
      final response = await dioClient.dio.post(
        "/login",
        data: {"email": "eve.holt@reqres.in", "password": "cityslicka"},
      );

      print(response.data);

      // Success → contains token
      return LoginModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400 || e.response?.statusCode == 401) {
        print(e.response);
        throw Exception("Invalid email or password");
      }
      throw Exception("Login failed: ${e.message}");
    }
  }
}
