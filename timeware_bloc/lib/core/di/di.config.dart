// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:flutter_bloc/flutter_bloc.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../features/home/data/datasources/species_data_source.dart' as _i15;
import '../../features/home/data/repositories/species_repository_impl.dart'
    as _i17;
import '../../features/home/domain/repositories/species_repository.dart'
    as _i16;
import '../../features/home/domain/usecases/get_species.dart' as _i18;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i19;
import '../../features/user/data/datasources/user_data_source.dart' as _i7;
import '../../features/user/data/repositories/user_repository_impl.dart' as _i9;
import '../../features/user/domain/repositories/user_repository.dart' as _i8;
import '../../features/user/domain/usecases/login_user.dart' as _i10;
import '../../features/user/presentation/cubit/login/login_cubit.dart' as _i14;
import '../../features/user/presentation/cubit/user/user_cubit.dart' as _i13;
import '../bloc_observer.dart' as _i12;
import '../routes/app_router.dart' as _i4;
import 'di.dart' as _i20;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => appModule.getSharedPreferences(),
      preResolve: true,
    );
    gh.singleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.lazySingleton<_i5.Logger>(() => appModule.logger);
    gh.lazySingleton<_i6.Dio>(() => appModule.dio);
    gh.lazySingleton<_i7.UserDataSource>(() => _i7.UserDataSourceImpl());
    gh.lazySingleton<_i8.UserRepository>(
        () => _i9.UserRepositoryImpl(gh<_i7.UserDataSource>()));
    gh.lazySingleton<_i10.LoginUser>(
        () => _i10.LoginUser(gh<_i8.UserRepository>()));
    gh.lazySingleton<_i11.BlocObserver>(
        () => _i12.SimpleBlocObserver(logger: gh<_i5.Logger>()));
    gh.factory<_i13.UserCubit>(
        () => _i13.UserCubit(gh<_i3.SharedPreferences>()));
    gh.factory<_i14.LoginCubit>(() => _i14.LoginCubit(gh<_i10.LoginUser>()));
    gh.lazySingleton<String>(
      () => appModule.apiKey,
      instanceName: 'apiKey',
    );
    gh.lazySingleton<_i15.SpeciesDataSource>(() => _i15.SpeciesDataSourceImpl(
          gh<_i6.Dio>(),
          gh<String>(instanceName: 'apiKey'),
        ));
    gh.lazySingleton<_i16.SpeciesRepository>(
        () => _i17.SpeciesRepositoryImpl(gh<_i15.SpeciesDataSource>()));
    gh.lazySingleton<_i18.GetSpecies>(
        () => _i18.GetSpecies(gh<_i16.SpeciesRepository>()));
    gh.factory<_i19.HomeCubit>(() => _i19.HomeCubit(gh<_i18.GetSpecies>()));
    return this;
  }
}

class _$AppModule extends _i20.AppModule {}
