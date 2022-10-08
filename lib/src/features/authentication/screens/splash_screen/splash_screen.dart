import 'package:login_ui_template_flutter/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_ui_template_flutter/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_ui_template_flutter/src/constants/colors.dart';
import 'package:login_ui_template_flutter/src/constants/image_strings.dart';
import 'package:login_ui_template_flutter/src/constants/sizes.dart';
import 'package:login_ui_template_flutter/src/constants/text_strings.dart';
import 'package:login_ui_template_flutter/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_ui_template_flutter/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class SplashScreen extends StatelessWidget{
  const SplashScreen ({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMS: 2000,
            animate: TAnimatePosition(
              topAfter: 80, topBefore: 80, leftAfter: tDefaultSize, leftBefore: -80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName,
                  style: Theme.of(context).textTheme.headline3,),
                Text(tAppTagLine,
                  style: Theme.of(context).textTheme.headline2,)
              ],
            ),
          ),

          TFadeInAnimation(
              durationInMS: 2000,
              animate: TAnimatePosition(
                bottomBefore: -180, bottomAfter: 50,
              ),
              child: const Image(image: AssetImage(tSplashImage), width: 400,),)
      ]
      ),
    );
  }

}

