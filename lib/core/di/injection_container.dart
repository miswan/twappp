import 'package:get_it/get_it.dart';
import '../../presentation/trending_page/repository/trending_repository.dart';
import '../../presentation/trending_page/bloc/trending_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  // Repository
  sl.registerLazySingleton(() => TrendingRepository());

  // Blocs
  sl.registerFactory(() => TrendingBloc(repository: sl()));
}
