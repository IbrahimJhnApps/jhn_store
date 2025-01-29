import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
            vertical: JSizes.spaceBtnSection),
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

                //Forgot password
                TextButton(
                  onPressed: () {},
                  child: Text(JTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: JSizes.spaceBtnSection),

            ///Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(JTexts.signIn),
              ),
            ),
            const SizedBox(height: JSizes.spaceBtnItem),

            ///Create Account Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(JTexts.createAccount),
              ),
            ),
            const SizedBox(height: JSizes.spaceBtnSection),
          ],
        ),
      ),
    );
  }
}