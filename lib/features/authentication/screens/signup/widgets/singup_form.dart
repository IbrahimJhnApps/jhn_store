import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jhn_store/features/authentication/screens/signup/verify_email.dart';
import 'package:jhn_store/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';

class JSignupForm extends StatelessWidget {
  const JSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: JTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: JSizes.spaceBtnInputField,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: JTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: JSizes.spaceBtnInputField,
          ),

          ///Username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: JTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: JSizes.spaceBtnInputField,
          ),

          ///Email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: JTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: JSizes.spaceBtnInputField,
          ),

          ///Phone Number
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: JTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: JSizes.spaceBtnInputField,
          ),

          ///Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: JTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: JSizes.spaceBtnInputField,
          ),

          ///Terms and Conditions Checkbox
          const JTermsAndConditionCheckbox(),
          const SizedBox(height: JSizes.spaceBtnSections),

          ///Sign Up Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: Text(JTexts.createAccount),
            ),
          ),
          const SizedBox(height: JSizes.spaceBtnSections),
        ],
      ),
    );
  }
}
