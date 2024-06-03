import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:timeware_bloc/core/error/failures.dart';
import 'package:timeware_bloc/core/usecases/usecase.dart';
import 'package:timeware_bloc/features/user/domain/entities/user.dart';
import 'package:timeware_bloc/features/user/domain/repositories/user_repository.dart';

@lazySingleton
class LoginUser implements UseCase<User, LoginUserParams> {
  final UserRepository repository;

  LoginUser(this.repository);

  @override
  Future<Either<Failure, User>> call(LoginUserParams params) {
    return repository.loginUser(email: params.email, password: params.password);
  }
}

class LoginUserParams extends Equatable {
  final String email;
  final String password;

  const LoginUserParams({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
