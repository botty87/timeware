import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/entities/user.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final SharedPreferences _sharedPreferences;

  UserCubit(this._sharedPreferences) : super(const UserState.loading());

  void readUser() async {
    //Emulate a network request for the user
    await Future.delayed(const Duration(seconds: 1));

    final userJson = _sharedPreferences.getString('user');
    if (userJson != null) {
      final user = User.fromJson(jsonDecode(userJson));
      emit(UserState.loggedIn(user: user));
    } else {
      emit(const UserState.loggedOut());
    }
  }

  void login(User user) {
    emit(UserState.loggedIn(user: user));
    _sharedPreferences.setString('user', jsonEncode(user.toJson()));
  }

  void logout() {
    emit(const UserState.loggedOut());
    _sharedPreferences.remove('user');
  }
}
