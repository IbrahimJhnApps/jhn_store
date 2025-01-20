import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jhn_store/common/styles/spacing_styles.dart';
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
                  Image(height: 150, image: AssetImage(dark ? JImages.lightAppLogo : JImages.darkAppLogo),),
                  Text(JTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
                  SizedBox(height: JSizes.sm),
                  Text(JTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),

              ///Form
              Form(
                child: Column(
                  children: [
                    ///Email
                    TextFormField(
                      decoration: InputDecoration( prefixIcon: Icon(Iconsax.direct_right),
                          labelText: JTexts.email),
                          ),

                    const SizedBox(height: JSizes.spaceBtnInputField),

                    ///Password
                    TextFormField(
                      decoration: InputDecoration(prefixIcon: Icon(Iconsax.password_check),
                          labelText: JTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
