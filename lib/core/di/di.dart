import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
Future<void> configureDependencies() async => getIt.init();

@module
abstract class AppModule {
  @lazySingleton
  Logger get logger => Logger();

  @preResolve
  Future<SharedPreferences> getSharedPreferences() => SharedPreferences.getInstance();

  @lazySingleton
  Dio get dio => Dio(BaseOptions(baseUrl: 'https://apiv3.iucnredlist.org/api/v3/species'));

  @lazySingleton
  @Named('apiKey')
  String get apiKey => '9bb4facb6d23f48efbf424bb05c0c1ef1cf6f468393bc745d42179ac4aca5fee';
}
