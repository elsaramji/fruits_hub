// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/repository/auth_repo_impl.dart' as _i751;
import '../../features/auth/domain/repository/auth_repo_interface.dart'
    as _i824;
import '../../features/auth/presentation/state/auth_cubit.dart' as _i43;
import '../services/rest_api_helper.dart' as _i891;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i891.RestApi>(() => _i891.RestApi());
    gh.lazySingleton<_i824.AuthRepoInterface>(
      () => _i751.AuthRepoImpl(gh<_i891.RestApi>()),
    );
    gh.factory<_i43.AuthCubit>(
      () => _i43.AuthCubit(gh<_i824.AuthRepoInterface>()),
    );
    return this;
  }
}
