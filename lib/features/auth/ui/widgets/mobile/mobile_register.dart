import 'package:flutter/material.dart';
import 'package:secret_comms/config/colors/app_colors.dart';
import 'package:secret_comms/config/routes/routes_path.dart';
import 'package:secret_comms/core/components/custom_button.dart';
import 'package:secret_comms/core/constant/app_constant.dart';
import 'package:secret_comms/core/helpers/extensions.dart';
import 'package:secret_comms/core/helpers/spacing.dart';
import 'package:secret_comms/core/methods/get_responsive_text/responsive_text.dart';

class MobileRegister extends StatelessWidget {
  const MobileRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: SizedBox(
          height: AppConstant.deviceHeight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: getResponsiveFontSize(context, fontSize: 25),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Spacing.verticalSpace(10),
              Row(
                children: [
                  const Text('Already have account ?'),
                  TextButton(
                    child: const Text('login'),
                    onPressed: () {
                      context.navigateToWidgetByNamed(
                        context,
                        RoutePath.login,
                      );
                    },
                  ),
                ],
              ),
              Spacing.verticalSpace(30),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Full Name', prefixIcon: Icon(Icons.person)),
              ),
              Spacing.verticalSpace(25),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Email Address',
                    prefixIcon: Icon(Icons.email_outlined)),
              ),
              Spacing.verticalSpace(25),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Password', prefixIcon: Icon(Icons.lock_outline)),
              ),
              Spacing.verticalSpace(50),
              CustomButton(
                onPressed: () {},
                text: 'Sign up',
                textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: getResponsiveFontSize(context, fontSize: 19),
                      color: AppColors.kWhiteColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
