part of 'auth_cubit.dart';

class AuthState {
  final bool isLogin;
  final bool loading;
  AuthState({this.isLogin = false, this.loading = false});

  AuthState copyWith({
    final bool? isLogin,
    final bool? loading,
  }) {
    return AuthState(
        isLogin: isLogin ?? this.isLogin, loading: loading ?? false);
  }
}
