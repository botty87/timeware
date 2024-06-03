import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/species/species.dart';
import '../entities/species_details/species_details.dart';

abstract class SpeciesRepository {
  Future<Either<Failure, List<Species>>> getSpeciesList();

  Future<Either<Failure, SpeciesDetails>> getSpeciesDetails(int speciesId);
}