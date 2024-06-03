import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/species.dart';

abstract class SpeciesDataSource {
  Future<List<Species>> getSpeciesList();
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
}
