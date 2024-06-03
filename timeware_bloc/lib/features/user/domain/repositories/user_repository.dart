import 'package:dartz/dartz.dart';
import 'package:timeware_bloc/core/error/failures.dart';
import 'package:timeware_bloc/features/user/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> loginUser({required String email, required String password});
}