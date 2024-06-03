import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/species/species.dart';
import '../../domain/entities/species_details/species_details.dart';

abstract class SpeciesDataSource {
  Future<List<Species>> getSpeciesList();

  Future<SpeciesDetails> getSpeciesDetails(int speciesId);
}

@LazySingleton(as: SpeciesDataSource)
class SpeciesDataSourceImpl implements SpeciesDataSource {
  final Dio _dio;
  final String _apiKey;

  SpeciesDataSourceImpl(this._dio, @Named('apiKey') this._apiKey);

  @override
  Future<List<Species>> getSpeciesList() async {
    final response = await _dio.get('/category/VU', queryParameters: {'token': _apiKey});
    final speciesList = response.data['result'] as List;
    return speciesList.map((e) => Species.fromJson(e)).toList();
  }

  @override
  Future<SpeciesDetails> getSpeciesDetails(int speciesId) async {
    final response = await _dio.get('/id/$speciesId', queryParameters: {'token': _apiKey});
    final species = (response.data['result'] as List).first;
    return SpeciesDetails.fromJson(species);
  }
}
