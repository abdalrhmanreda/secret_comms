import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@Freezed()
class AuthState<T> with _$AuthState<T> {
  const factory AuthState.initial() = Initial<T>;
  const factory AuthState.authenticated(T user) = Authenticated<T>;
  const factory AuthState.unauthenticated() = Unauthenticated<T>;
}
