import 'package:api_test/src/application/user/user_event.dart';
import 'package:api_test/src/application/user/user_state.dart';
import 'package:api_test/src/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  UserBloc(this.userRepository) : super(UserInitial()) {
    on<FetchUsers>((event, emit) async {
      emit(UserLoading());
      try {
        final users = await userRepository.getUsers();
        emit(UserLoaded(users));
      } catch (e) {
        emit(UserError(e.toString()));
      }
    });

    on<FetchUserDetail>((event, emit) async {
      emit(UserLoading());
      try {
        final user = await userRepository.getUser(event.id);
        emit(UserDetailLoaded(user));
      } catch (e) {
        emit(UserError(e.toString()));
      }
    });
  }
}