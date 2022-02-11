import 'dart:developer';

import 'package:dio/dio.dart';

import 'locator.dart';
import 'preferences_service.dart';

class CustomDioInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final _preferencesService = await getIt.get<Future<PreferencesService>>();
    // Adding JWT token to the Header of RequestOptions ........
    // options.headers["Token"] = _preferencesService.getToken;
    log(options.method +
        "SENDING REQUEST -->" +
        options.baseUrl +
        options.path);

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    log("RESPONSE STATUSCODE -- >" +
        response.statusCode.toString() +
        "URL -->" +
        response.requestOptions.baseUrl +
        response.requestOptions.path);

    if (response.statusCode == 401) {
      // REFRESH TOKEN OPERATION BLOCK
    }
    super.onResponse(response, handler);
  }
}
