// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../constants/util.dart' as _i17;
import '../../data/repositories/survey_repository.dart' as _i12;
import '../../data/repositories/user_profile_repository.dart' as _i16;
import '../../presentation/router/router.gr.dart' as _i3;
import '../bloc/matches_bloc.dart' as _i9;
import '../bloc/survey_bloc.dart' as _i11;
import '../bloc/user_body_type_bloc.dart' as _i13;
import '../bloc/user_gender_bloc.dart' as _i14;
import '../bloc/user_profile_bloc.dart' as _i15;
import '../controllers/firestore_db.dart' as _i5;
import '../cubit/auth_cubit.dart' as _i4;
import '../cubit/phone_number_sign_in_cubit.dart' as _i10;
import '../services/firebase_auth_service.dart' as _i8;
import '../services/i_auth_service.dart' as _i7;
import 'injectable_module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.singleton<_i3.AppRouter>(injectableModule.appRouter);
  gh.lazySingleton<_i4.AuthCubit>(() => _i4.AuthCubit());
  gh.lazySingleton<_i5.DatabaseMethods>(() => _i5.DatabaseMethods());
  gh.lazySingleton<_i6.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i7.IAuthService>(
      () => _i8.FirebaseAuthService(get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i9.MatchesBloc>(() => _i9.MatchesBloc());
  gh.factory<_i10.PhoneNumberSignInCubit>(() => _i10.PhoneNumberSignInCubit());
  gh.lazySingleton<_i11.SurveyBloc>(() => _i11.SurveyBloc());
  gh.lazySingleton<_i12.SurveyRepository>(() => _i12.SurveyRepository());
  gh.lazySingleton<_i13.UserBodyTypeBloc>(() => _i13.UserBodyTypeBloc());
  gh.lazySingleton<_i14.UserGenderBloc>(() => _i14.UserGenderBloc());
  gh.lazySingleton<_i15.UserProfileBloc>(() => _i15.UserProfileBloc());
  gh.lazySingleton<_i16.UserProfileRepository>(
      () => _i16.UserProfileRepository());
  gh.lazySingleton<_i17.Util>(() => _i17.Util());
  return get;
}

class _$InjectableModule extends _i18.InjectableModule {}
