import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/species.dart';
import '../repositories/species_repository.dart';

@lazySingleton
class GetSpecies implements UseCase<List<Species>, NoParams> {
  final SpeciesRepository _repository;

  GetSpecies(this._repository);
  
  @override
  Future<Either<Failure, List<Species>>> call(NoParams params) {
    return _repository.getSpeciesList();
  }
}