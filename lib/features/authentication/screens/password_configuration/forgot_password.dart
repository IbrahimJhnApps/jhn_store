import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jhn_store/features/authentication/screens/password_configuration/reset_password.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(JSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///Heading
            Text(
              JTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: JSizes.spaceBtnItems,
            ),
            Text(
              JTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: JSizes.spaceBtnSections * 2,
            ),

            ///Text Field
            TextFormField(
              decoration: InputDecoration( labelText: JTexts.email, prefixIcon: Icon(Iconsax.direct_right) ),
            ),
            const SizedBox(
              height: JSizes.spaceBtnItems,
            ),

            ///Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(() => const ResetScreen()), child: Text(JTexts.submit)),
            )

          ],
        ),
      ),
    );
  }
}
