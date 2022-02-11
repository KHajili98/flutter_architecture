import 'dart:developer';

import 'package:base_project/data/services/local/locator.dart';
import 'package:base_project/data/services/local/preferences_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());

  Future<void> authControl({required BuildContext context}) async {
    emit(state.copyWith(loading: true));
    PreferencesService service = await getIt.get<Future<PreferencesService>>();

    if (service.getToken != "") {
      log("Token -- ${service.getToken}");

      emit(state.copyWith(isLogin: true));
    } else {
      emit(state.copyWith(isLogin: false));
    }
  }
}
