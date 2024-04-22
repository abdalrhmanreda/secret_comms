import 'package:flutter/material.dart';

import '../widgets/mobile/login_mobile.dart';
import '../widgets/web/web_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const MobileLogin();
          } else {
            return const WebLogin();
          }
        },
      ),
    );
  }
}
