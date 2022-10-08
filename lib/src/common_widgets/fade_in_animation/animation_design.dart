import 'package:login_ui_template_flutter/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../constants/sizes.dart';
import '../../constants/text_strings.dart';
import 'fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({
    Key? key,
    required this.durationInMS,
    required this.child,
    this.animate,
  }) : super(key: key);


  final controller = Get.put(FadeInAnimationController());
  final int durationInMS;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMS),
        top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
        left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
        right: controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
        bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMS),
          opacity: controller.animate.value ? 1 : 0,
          child: child
        )
      ),
    );
  }
}
