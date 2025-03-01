import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jhn_store/common/widgets/login_signup/form_divider.dart';
import 'package:jhn_store/common/widgets/login_signup/social_buttons.dart';
import 'package:jhn_store/features/authentication/screens/signup/widgets/singup_form.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(JSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Title
            Text(JTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: JSizes.spaceBtnSections),

            ///Form
            const JSignupForm(),
            const SizedBox(height: JSizes.spaceBtnSections),

            ///Divider
            JFormDivider(dividerText: JTexts.orSignInWith.capitalize!),
            const SizedBox(height: JSizes.spaceBtnSections),

            ///Divider
            const JSocialButtons(),

          ],
        ),
        ),
      ),
    );
  }
}