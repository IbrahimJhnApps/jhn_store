import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jhn_store/common/styles/spacing_styles.dart';
import 'package:jhn_store/common/widgets/login_signup/form_divider.dart';
import 'package:jhn_store/common/widgets/login_signup/social_buttons.dart';
import 'package:jhn_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:jhn_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';
import 'package:jhn_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = JHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: JSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [

              /// Logo, Title & Sub-Title
              const JLoginHeader(),

              ///Form
              const JLoginForm(),

              /// Divider
              JFormDivider(dividerText: JTexts.orSignInWith.capitalize!),
              const SizedBox(height: JSizes.spaceBtnSection),

              /// Footer
              const JSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
