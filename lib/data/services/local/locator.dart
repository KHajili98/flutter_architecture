import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import 'custom_dio_interceptor.dart';
import 'preferences_service.dart';

final getIt = GetIt.instance;
final dio = Dio();
late final dioWithInterceptor = Dio()..interceptors.add(CustomDioInterceptor());

void setupLocator() {
  getIt.registerLazySingleton<Future<PreferencesService>>(
      () => PreferencesService.instance);
}
