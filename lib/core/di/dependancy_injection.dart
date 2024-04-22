import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:secret_comms/features/auth/logic/auth_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerFactory<AuthCubit>(() => AuthCubit());
  // getIt.registerFactory<LocationCubit>(() => LocationCubit());
}
