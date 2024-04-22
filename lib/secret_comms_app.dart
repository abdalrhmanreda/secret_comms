import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secret_comms/config/routes/router.dart';
import 'package:secret_comms/config/routes/routes_path.dart';

class SecretCommsApp extends StatelessWidget {
  final AppRouter appRouter;
  const SecretCommsApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: RoutePath.register,
      ),
    );
  }
}
