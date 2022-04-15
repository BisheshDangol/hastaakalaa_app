import 'package:get_it/get_it.dart';
import 'package:hastaakalaa_app/core/application/invalid_input_failure.dart';
import 'package:hastaakalaa_app/core/network/network_info.dart';
import 'package:hastaakalaa_app/features/art/data/repositories/art_repository_impl.dart';
import 'package:hastaakalaa_app/features/art/domain/repositories/i_art_repository.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/bookmark_post_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/buy_art_post_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/create_art_post_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/filter_post_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/get_all_art_post_list_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/get_all_art_post_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/get_bookmark_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/like_post_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/retrieve_art_post_usecase.dart';
import 'package:hastaakalaa_app/features/art/domain/usecases/sell_art_post_usecase.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_bookmark_watcher_bloc/art_bookmark_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_filter_watcher_bloc/art_filter_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_form_bloc/art_form_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_list_watcher_bloc/bloc/art_list_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/art_search_watcher_bloc/art_search_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/buy_art_watcher_bloc/buy_art_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/retrieve_art_watcher_bloc/retrieve_art_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/sell_art_watcher_bloc/sell_art_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/comment/data/datasources/comment_remote_data_source.dart';
import 'package:hastaakalaa_app/features/comment/data/repositories/comment_repository_impl.dart';
import 'package:hastaakalaa_app/features/comment/domain/repositories/i_comment_repository.dart';
import 'package:hastaakalaa_app/features/comment/domain/usecases/get_comment_post_usecase.dart';
import 'package:hastaakalaa_app/features/comment/domain/usecases/post_comment_usecase.dart';
import 'package:hastaakalaa_app/features/comment/presentation/bloc/comment_form_bloc/comment_form_bloc.dart';
import 'package:hastaakalaa_app/features/comment/presentation/bloc/comment_watcher_bloc/comment_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/follow/domain/usecases/get_all_follower_list_usecase.dart';
import 'package:hastaakalaa_app/features/follow/presentation/bloc/get_follow_watcher_bloc/get_follow_watcher_bloc.dart';
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
import 'package:hastaakalaa_app/features/user/data/datasources/user_remote_data_source.dart';
import 'package:hastaakalaa_app/features/user/data/repositories/user_repository_impl.dart';
import 'package:hastaakalaa_app/features/user/domain/repositories/i_user_repository.dart';
import 'package:hastaakalaa_app/features/user/domain/usecases/get_all_user_usecase.dart';
import 'package:hastaakalaa_app/features/user/domain/usecases/get_current_user_usecase.dart';
import 'package:hastaakalaa_app/features/user/domain/usecases/search_user_usecase.dart';
import 'package:hastaakalaa_app/features/user/presentation/bloc/current_user_watcher_bloc/bloc/current_user_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/user/presentation/bloc/search_user_watcher_bloc/search_user_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/user/presentation/bloc/user_list_watcher_bloc/user_list_watcher_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'features/art/data/datasources/art_remote_data_source.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  //! Features - Get Token of Login.
  //! Bloc
  sl.registerFactory(() => LoginBloc(sl(), sl()));

  sl.registerFactory(() => RegisterFormBloc(sl(), sl()));

  sl.registerFactory(() => ArtFormBloc(sl(), sl(), sl(), sl(), sl()));

  sl.registerFactory(() => ArtSearchWatcherBloc(sl(), sl()));

  sl.registerFactory(() => ArtListWatcherBloc(sl()));

  sl.registerFactory(() => UserListWatcherBloc(sl()));

  sl.registerFactory((() => CurrentUserWatcherBloc(sl())));

  sl.registerFactory(() => ArtFilterWatcherBloc(sl()));

  sl.registerFactory(() => ArtBookmarkWatcherBloc(sl()));

  sl.registerFactory(() => CommentWatcherBloc(sl()));

  sl.registerFactory(() => CommentFormBloc(sl(), sl()));

  sl.registerFactory(() => BuyArtWatcherBloc(sl()));

  sl.registerFactory(() => SellArtWatcherBloc(sl()));

  sl.registerFactory(() => SearchUserWatcherBloc(sl(), sl()));

  sl.registerFactory(() => RetrieveArtWatcherBloc(sl()));

  sl.registerFactory(() => GetFollowWatcherBloc(sl()));

  //! UseCases

  sl.registerLazySingleton(() => CreateUserTokenUseCase(sl()));

  sl.registerLazySingleton(() => RegisterUserUsecase(sl()));

  sl.registerLazySingleton(() => CreateArtPostUseCase(sl()));

  sl.registerLazySingleton(() => GetAllArtPostUseCase(sl()));

  sl.registerLazySingleton(() => GetAllArtPostListUsecase(sl()));

  sl.registerLazySingleton(() => GetAllUserUsecase(sl()));

  sl.registerLazySingleton(() => LikePostUsecase(sl()));

  sl.registerLazySingleton(() => BookmarkPostUsecase(sl()));

  sl.registerLazySingleton(() => GetCurrentUserUsecase(sl()));

  sl.registerLazySingleton(() => FilterPostUseCase(sl()));

  sl.registerLazySingleton(() => GetBookmarkUsecase(sl()));

  sl.registerLazySingleton((() => GetCommentPostUseCase(sl())));

  sl.registerLazySingleton(() => PostCommentUseCase(sl()));

  sl.registerLazySingleton(() => BuyArtPostUsecase(sl()));

  sl.registerLazySingleton(() => SellArtPostUsecase(sl()));

  sl.registerLazySingleton(() => SearchUserUseCase(sl()));

  sl.registerLazySingleton(() => RetrieveArtPostUsecase(sl()));

  sl.registerLazySingleton(() => GetAllFollowerListUseCase(sl()));

  //! Input Convert
  sl.registerLazySingleton(() => InputConvert());

  //! Repository
  sl.registerLazySingleton<ILoginRepository>(
      () => LoginRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()));

  sl.registerLazySingleton<IRegisterRepository>(
      () => RegisterRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()));

  sl.registerLazySingleton<IArtRepository>(
      () => ArtRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()));

  sl.registerLazySingleton<IUserRepository>(
      () => UserRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()));

  sl.registerLazySingleton<ICommentRepository>(
      () => CommentRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()));

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  sl.registerLazySingleton<ILoginRemoteDataSource>(
      () => LoginRemoteDataSource(client: sl()));

  sl.registerLazySingleton<IRegisterDataSource>(
      () => RegisterRemoteDataSource(client: sl()));

  sl.registerLazySingleton<IArtDataSource>(
      () => ArtRemoteDataSource(client: sl()));

  sl.registerLazySingleton<IUserDataSource>(
      () => UserRemoteDataSource(client: sl()));

  sl.registerLazySingleton<ICommentDataSource>(
      () => CommentRemoteDataSource(client: sl()));

  sl.registerLazySingleton(() => http.Client());

  sl.registerLazySingleton(() => InternetConnectionChecker());
}
