import 'package:injectable/injectable.dart';
import '../../domain/entities/user.dart';

abstract class UserDataSource {
  Future<User> loginUser({required String email, required String password});
}

@LazySingleton(as: UserDataSource)
class UserDataSourceImpl implements UserDataSource {
  @override
  Future<User> loginUser({required String email, required String password}) async {
    if(email == 'test@test.it' && password == 'password') {
      return const User(id: '1', name: 'Test', email: 'test@test.it');
    } else {
      throw Exception('Invalid credentials');
    } 
  }
}
  