import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/init.dart';
import 'presentation/app.dart';
import 'presentation/cubit/auth/auth_cubit.dart';

Future<void> main() async {
  await init();
  runApp(BlocProvider(
    create: (context) => AuthCubit()..authControl(context: context),
    child: const App(),
  ));
}