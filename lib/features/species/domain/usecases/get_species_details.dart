import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/species_details/species_details.dart';
import '../repositories/species_repository.dart';

@lazySingleton
class GetSpeciesDetails implements UseCase<SpeciesDetails, GetSpeciesDetailsParams> {
  final SpeciesRepository _repository;

  GetSpeciesDetails(this._repository);

  @override
  Future<Either<Failure, SpeciesDetails>> call(GetSpeciesDetailsParams params) {
    return _repository.getSpeciesDetails(params.speciesId);
  }
}

class GetSpeciesDetailsParams extends Equatable {
  final int speciesId;

  const GetSpeciesDetailsParams(this.speciesId);

  @override
  List<Object> get props => [speciesId];
}
