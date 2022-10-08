import 'package:login_ui_template_flutter/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_ui_template_flutter/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_ui_template_flutter/src/constants/colors.dart';
import 'package:login_ui_template_flutter/src/constants/image_strings.dart';
import 'package:login_ui_template_flutter/src/constants/sizes.dart';
import 'package:login_ui_template_flutter/src/constants/text_strings.dart';
import 'package:login_ui_template_flutter/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:login_ui_template_flutter/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMS: 1200,
            animate: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftBefore: 0,
              leftAfter: 0,
              topAfter: 0,
              topBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(tWelcomeScreenImage),
                    height: height * 0.6,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () {
                                Get.to(LoginScreen());
                                },
                              child: Text(tLogin.toUpperCase(),))),
                      SizedBox(width: 10.0),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                  Get.to(SignUpScreen());
                              },
                              child: Text(tSignup.toUpperCase(),)))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
