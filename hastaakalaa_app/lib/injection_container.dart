import 'package:get_it/get_it.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/login/data/datasources/login_remote_data_source.dart';
import 'package:hastaakalaa_app/features/login/data/repositories/login_repository_impl.dart';
import 'package:hastaakalaa_app/features/login/domain/repositories/i_login_repository.dart';
import 'package:hastaakalaa_app/features/login/domain/usecases/create_user_token_usecase.dart';
import 'package:hastaakalaa_app/features/login/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:hastaakalaa_app/features/register/data/datasources/register_remote_data_source.dart';
import 'package:hastaakalaa_app/features/register/data/repositories/register_repository_impl.dart';
import 'package:hastaakalaa_app/features/register/domain/repositories/i_register_repository.dart';
import 'package:hastaakalaa_app/features/register/domain/usecases/register_user_usecase.dart';
import 'package:hastaakalaa_app/features/register/presentation/bloc/bloc/register_form_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  //! Features - Get Token of Login.
  //! Bloc
  sl.registerFactory(() => LoginBloc(sl(), sl()));

  sl.registerFactory(() => RegisterFormBloc(sl(), sl()));

  //! UseCases

  sl.registerLazySingleton(() => CreateUserTokenUseCase(sl()));

  sl.registerLazySingleton(() => RegisterUserUsecase(sl()));

  //! Input Convert
  sl.registerLazySingleton(() => InputConvert());

  //! Repository
  sl.registerLazySingleton<ILoginRepository>(
      () => LoginRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()));

  sl.registerLazySingleton<IRegisterRepository>(
      () => RegisterRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()));

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  sl.registerLazySingleton<ILoginRemoteDataSource>(
      () => LoginRemoteDataSource(client: sl()));

  sl.registerLazySingleton<IRegisterDataSource>(
      () => RegisterRemoteDataSource(client: sl()));

  sl.registerLazySingleton(() => http.Client());

  sl.registerLazySingleton(() => InternetConnectionChecker());
}
