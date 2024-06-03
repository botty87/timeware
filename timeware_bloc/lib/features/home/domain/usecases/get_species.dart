import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:timeware_bloc/core/error/failures.dart';
import 'package:timeware_bloc/core/usecases/usecase.dart';
import 'package:timeware_bloc/features/home/domain/entities/species.dart';
import 'package:timeware_bloc/features/home/domain/repositories/species_repository.dart';

@lazySingleton
class GetSpecies implements UseCase<List<Species>, NoParams> {
  final SpeciesRepository _repository;

  GetSpecies(this._repository);
  
  @override
  Future<Either<Failure, List<Species>>> call(NoParams params) {
    return _repository.getSpeciesList();
  }
}