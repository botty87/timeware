import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:timeware_bloc/core/error/failures.dart';
import 'package:timeware_bloc/features/user/data/datasources/user_data_source.dart';
import 'package:timeware_bloc/features/user/domain/entities/user.dart';
import 'package:timeware_bloc/features/user/domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Future<Either<Failure, User>> loginUser({required String email, required String password}) async {
    try {
      final user = await userDataSource.loginUser(email: email, password: password);
      return Right(user);
    } on Exception {
      return const Left(Failure(message: 'Invalid credentials'));
    }
  }
}
