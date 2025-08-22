import 'package:api_test/src/domain/models/user_model/user_model.dart';

abstract class UserState {}
class UserInitial extends UserState {}
class UserLoading extends UserState {}
class UserLoaded extends UserState {
  final List<UserModel> users;
  UserLoaded(this.users);
}
class UserDetailLoaded extends UserState {
  final UserModel user;
  UserDetailLoaded(this.user);
}
class UserError extends UserState {
  final String error;
  UserError(this.error);
}