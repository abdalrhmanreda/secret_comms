import 'package:flutter/material.dart';

import '../widgets/mobile/mobile_register.dart';
import '../widgets/web/web_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileRegister();
        } else {
          return const WebRegister();
        }
      },
    ));
  }
}
