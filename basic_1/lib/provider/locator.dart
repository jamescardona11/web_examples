import 'package:basic_1/services/navigator_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => NavigatorService());
}
