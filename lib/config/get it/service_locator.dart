import 'package:get_it/get_it.dart';
import '../../data/repository/service_repository.dart';
import '../../data/services/firebase_service.dart';


final sl = GetIt.instance;

void initDependencies() {
  //  Core Services
  sl.registerLazySingleton<FirebaseService>(
        () => FirebaseService(),
  );

  //  Repositories
  sl.registerLazySingleton<ServiceRepository>(
        () => ServiceRepository(sl.get<FirebaseService>()),
  );

  // them bloc
  //sl.registerLazySingleton<ThemeBloc>(() => ThemeBloc());
}
