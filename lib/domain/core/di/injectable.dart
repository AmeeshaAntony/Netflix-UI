import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart';
final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureInjection() async{
    await $initGetIt(getIt, environment: Environment.prod);
}
Future<void> $initGetIt(GetIt getIt, {String? environment}) async {
  final gh = GetItHelper(getIt, environment);
  // Example service registration:
  //gh.registerSingleton<MyService>(MyService());
}
