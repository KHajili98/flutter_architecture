import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/auth/auth_cubit.dart';
import 'routers/app_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base Architecture',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state.loading) {
            // Loading page will return ....
            return const CircularProgressIndicator();
          } else {
            if (state.isLogin) {
              //  Home page will return ...
              return const SizedBox(
                child: Text("HOME PAGE"),
              );
            } else {
              //  Login page will return ...
              return const SizedBox(
                child: Text("LOGIN PAGE"),
              );
            }
          }
        },
      ),
    );
  }
}
