import 'package:get_it/get_it.dart';
import 'package:landing_page_scroll/services/navigator_service.dart';

final locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => NavigatorService());
}
