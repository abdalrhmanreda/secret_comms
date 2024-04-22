import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secret_comms/config/colors/app_colors.dart';
import 'package:secret_comms/core/components/custom_button.dart';
import 'package:secret_comms/core/helpers/extensions.dart';
import 'package:secret_comms/core/helpers/spacing.dart';
import 'package:secret_comms/core/methods/get_responsive_text/responsive_text.dart';

class MobileLogin extends StatelessWidget {
  const MobileLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: 15.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: getResponsiveFontSize(context, fontSize: 25),
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Spacing.verticalSpace(10),
            Row(
              children: [
                const Text('Do\'nt have account ?'),
                TextButton(
                  child: const Text('register'),
                  onPressed: () {
                    context.pop(context);
                  },
                ),
              ],
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
              text: 'Sign in',
              textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: getResponsiveFontSize(context, fontSize: 19),
                    color: AppColors.kWhiteColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
