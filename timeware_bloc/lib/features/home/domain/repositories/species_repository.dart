import 'package:dartz/dartz.dart';
import 'package:timeware_bloc/core/error/failures.dart';
import 'package:timeware_bloc/features/home/domain/entities/species.dart';

abstract class SpeciesRepository {
  Future<Either<Failure, List<Species>>> getSpeciesList();
}