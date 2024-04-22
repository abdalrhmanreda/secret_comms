import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secret_comms/config/routes/routes_path.dart';
import 'package:secret_comms/core/di/dependancy_injection.dart';
import 'package:secret_comms/features/auth/ui/screens/login.dart';
import 'package:secret_comms/features/auth/ui/screens/register.dart';

import '../../features/auth/logic/auth_cubit.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this argument is used to pass data from one screen to another
    final arguments = settings.arguments;
    switch (settings.name) {
      case RoutePath.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: const RegisterScreen()),
        );
      case RoutePath.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<AuthCubit>(),
              child: const LoginScreen()),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
