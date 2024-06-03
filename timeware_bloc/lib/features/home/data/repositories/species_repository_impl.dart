import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:timeware_bloc/core/error/failures.dart';
import 'package:timeware_bloc/features/home/data/datasources/species_data_source.dart';
import 'package:timeware_bloc/features/home/domain/entities/species.dart';
import 'package:timeware_bloc/features/home/domain/repositories/species_repository.dart';

@LazySingleton(as: SpeciesRepository)
class SpeciesRepositoryImpl implements SpeciesRepository {
  final SpeciesDataSource _dataSource;

  SpeciesRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<Species>>> getSpeciesList() async {
    try {
      final speciesList = await _dataSource.getSpeciesList();
      return Right(speciesList);
    } on Exception {
      return const Left(Failure(message: 'Error fetching species list'));
    }
  }
  
  
  
}