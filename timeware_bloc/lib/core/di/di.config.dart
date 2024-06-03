// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_bloc/flutter_bloc.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../features/user/data/datasources/user_data_source.dart' as _i6;
import '../../features/user/data/repositories/user_repository_impl.dart' as _i8;
import '../../features/user/domain/repositories/user_repository.dart' as _i7;
import '../../features/user/domain/usecases/login_user.dart' as _i9;
import '../../features/user/presentation/cubit/login/login_cubit.dart' as _i13;
import '../../features/user/presentation/cubit/user/user_cubit.dart' as _i12;
import '../bloc_observer.dart' as _i11;
import '../routes/app_router.dart' as _i4;
import 'di.dart' as _i14;

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
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.getSharedPreferences(),
      preResolve: true,
    );
    gh.singleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.lazySingleton<_i5.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i6.UserDataSource>(() => _i6.UserDataSourceImpl());
    gh.lazySingleton<_i7.UserRepository>(
        () => _i8.UserRepositoryImpl(gh<_i6.UserDataSource>()));
    gh.lazySingleton<_i9.LoginUser>(
        () => _i9.LoginUser(gh<_i7.UserRepository>()));
    gh.lazySingleton<_i10.BlocObserver>(
        () => _i11.SimpleBlocObserver(logger: gh<_i5.Logger>()));
    gh.factory<_i12.UserCubit>(
        () => _i12.UserCubit(gh<_i3.SharedPreferences>()));
    gh.factory<_i13.LoginCubit>(() => _i13.LoginCubit(gh<_i9.LoginUser>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
