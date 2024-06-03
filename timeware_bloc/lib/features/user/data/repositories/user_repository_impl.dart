import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../datasources/user_data_source.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';

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
