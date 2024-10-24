// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:netflix1/application/downloads/downloads_bloc.dart' as _i603;
import 'package:netflix1/domain/downloads/models/i_downloads_repo.dart'
    as _i801;
import 'package:netflix1/infrastructure/downloads/downloads_repo.dart' as _i881;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i801.IDownloadsRepo>(() => _i881.DownloadsRepo());
    gh.factory<_i603.DownloadsBloc>(
        () => _i603.DownloadsBloc(gh<_i801.IDownloadsRepo>()));
    return this;
  }
}
