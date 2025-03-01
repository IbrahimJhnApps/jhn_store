import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jhn_store/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:jhn_store/features/authentication/screens/signup/signup.dart';
import 'package:jhn_store/navigation_menu.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';

class JLoginForm extends StatelessWidget {
  const JLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: JSizes.spaceBtnSections),
        child: Column(
          children: [

            ///Email
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: JTexts.email),
            ),

            const SizedBox(height: JSizes.spaceBtnInputField),

            ///Password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: JTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: JSizes.spaceBtnInputField / 2),

            ///Remember me & Forgot password
            Row(
              children: [

                ///Remember me
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(JTexts.rememberME),
                  ],
                ),

                ///Forgot password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: Text(JTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: JSizes.spaceBtnSections),

            ///Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: Text(JTexts.signIn),
              ),
            ),
            const SizedBox(height: JSizes.spaceBtnItems),

            ///Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()), child: Text( JTexts.createAccount),
              ),
            ),
            const SizedBox(height: JSizes.spaceBtnSections),
          ],
        ),
      ),
    );
  }
}