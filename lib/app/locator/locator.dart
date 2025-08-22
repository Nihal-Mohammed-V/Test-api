
import 'package:api_test/app/locator/locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
@InjectableInit()
void configureDependencies() => getIt.init();
