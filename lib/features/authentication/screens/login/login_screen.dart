import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jhn_store/common/styles/spacing_styles.dart';
import 'package:jhn_store/utils/constants/colors.dart';
import 'package:jhn_store/utils/constants/sizes.dart';
import 'package:jhn_store/utils/constants/text_strings.dart';
import 'package:jhn_store/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/images_strings.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? JImages.lightAppLogo : JImages.darkAppLogo),
                  ),
                  Text(
                    JTexts.loginTitle,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium,
                  ),
                  SizedBox(height: JSizes.sm),
                  Text(
                    JTexts.loginSubTitle,
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyMedium,
                  ),
                ],
              ),

              ///Form
              Form(
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
              ),

              /// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                          color: dark ? JColors.darkGrey : JColors.grey,
                          thickness: 0.5,
                          indent: 60,
                          endIndent: 5)),
                  Text(JTexts.orSignInWith.capitalize!,
                      style: Theme
                          .of(context)
                          .textTheme
                          .labelMedium),
                  Flexible(
                      child: Divider(
                          color: dark ? JColors.darkGrey : JColors.grey,
                          thickness: 0.5,
                          indent: 5,
                          endIndent: 60)),
                ],
              ),
              const SizedBox(height: JSizes.spaceBtnSection),

              /// Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: JColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image(
                        width: JSizes.iconMd,
                        height: JSizes.iconMd,
                        image:AssetImage(JImages.google),
                      ),
                    ),
                  ),

                  const SizedBox(height: JSizes.spaceBtnItem),

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: JColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image(
                        width: JSizes.iconMd,
                        height: JSizes.iconMd,
                        image:AssetImage(JImages.apple),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
