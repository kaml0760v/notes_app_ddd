import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;
@injectableInit
void configureInjection(String env) {
  getIt.init();

  // $initGetIt(getIt, environment: env);
}
