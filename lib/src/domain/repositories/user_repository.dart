import 'package:api_test/src/domain/models/user_model/user_model.dart';
import 'package:api_test/src/infrastructure/services/dio_client.dart';

class UserRepository {
  final DioClient dioClient;
  UserRepository(this.dioClient);

  Future<List<UserModel>> getUsers() async {
    final response = await dioClient.dio.get("users?page=2");
    print(response);
    final List users = response.data['data'];
    print(users);
    return users.map((json) => UserModel.fromJson(json)).toList();
    
  }

  Future<UserModel> getUser(String id) async {
    final response = await dioClient.dio.get("users/$id");
    return UserModel.fromJson(response.data['data']);
  }
}
