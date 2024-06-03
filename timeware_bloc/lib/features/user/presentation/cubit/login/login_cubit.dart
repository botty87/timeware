import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:timeware_bloc/features/user/domain/entities/user.dart';
import 'package:timeware_bloc/features/user/domain/usecases/login_user.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginUser _loginUser;

  LoginCubit(this._loginUser) : super(const LoginState());

  void emailChanged(String value) {
    emit(state.copyWith(email: value));
  }

  void passwordChanged(String value) {
    emit(state.copyWith(password: value));
  }

  void login() {
    final email = state.email;
    final password = state.password;

    if (email.isEmpty || password.isEmpty) {
      emit(state.copyWith(error: 'Email and password are required'));
      return;
    }

    _loginUser(LoginUserParams(email: email, password: password)).then((result) {
      result.fold(
        (error) => emit(state.copyWith(error: error.message)),
        (user) => emit(state.copyWith(loggedInUser: user, error: null)),
      );
    });
  }
}
