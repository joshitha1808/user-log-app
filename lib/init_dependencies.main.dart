part of 'init_dependencies.dart';

final GetIt serviceLocator = GetIt.instance;

void initDependencies() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator.registerSingleton<http.Client>(Client());

  serviceLocator.registerLazySingleton<ConnectionChecker>(
    () => ConnectionCheckerImpl(),
  );
}
