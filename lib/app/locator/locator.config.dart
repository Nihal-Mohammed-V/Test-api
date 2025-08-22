// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:api_test/app/services/api_services/api_service.dart' as _i772;
import 'package:api_test/src/application/auth_bloc/auth_bloc.dart' as _i971;
import 'package:api_test/src/application/user/user_bloc.dart' as _i402;
import 'package:api_test/src/domain/repositories/auth_repository.dart' as _i11;
import 'package:api_test/src/domain/repositories/user_repository.dart' as _i236;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i772.Api>(() => _i772.Api());
    gh.factory<_i971.AuthBloc>(() => _i971.AuthBloc(gh<_i11.AuthRepository>()));
    gh.factory<_i402.UserBloc>(
      () => _i402.UserBloc(gh<_i236.UserRepository>()),
    );
    return this;
  }
}
