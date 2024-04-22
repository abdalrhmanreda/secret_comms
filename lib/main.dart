import 'package:flutter/material.dart';
import 'package:secret_comms/config/routes/router.dart';
import 'package:secret_comms/core/di/dependancy_injection.dart';
import 'package:secret_comms/secret_comms_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(SecretCommsApp(
    appRouter: AppRouter(),
  ));
}
