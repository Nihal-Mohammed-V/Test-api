import 'package:api_test/src/application/auth_bloc/auth_event.dart';
import 'package:api_test/src/application/auth_bloc/auth_state.dart';
import 'package:api_test/src/domain/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        final token = await authRepository.login(event.email, event.password);
        emit(AuthSuccess(token as String));
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });
  }
}
