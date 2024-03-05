import 'package:bluesoft_bank/core/di/di.config.dart';
import 'package:bluesoft_bank/utils/navigation/navigation.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib/di'])
GetIt configureDependencies() {
  getIt.registerSingleton<Navigation>(Navigation());
  return getIt.init();
}
