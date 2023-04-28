import 'package:get_it/get_it.dart';
// ignore: depend_on_referenced_packages
import 'package:injectable/injectable.dart';
import 'package:social_app/domain/core/di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> configureInjection() async {
  getIt.init(environment: Environment.prod);
  // getIt.registerSingleton<IAuthRepo>(FirebaseRepository());
}
