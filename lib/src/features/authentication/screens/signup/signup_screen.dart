import 'package:login_ui_template_flutter/src/common_widgets/form/form_header_widget.dart';
import 'package:login_ui_template_flutter/src/constants/image_strings.dart';
import 'package:login_ui_template_flutter/src/constants/sizes.dart';
import 'package:login_ui_template_flutter/src/constants/text_strings.dart';
import 'package:login_ui_template_flutter/src/features/authentication/screens/login_screen/widgets/login_footer_widget.dart';
import 'package:login_ui_template_flutter/src/features/authentication/screens/login_screen/widgets/login_form_widget.dart';
import 'package:login_ui_template_flutter/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:login_ui_template_flutter/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget{
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(image: tWelcomeScreenImage, title: tSignUpTitle, subtitle: tSignUpSubTitle),
                SignUpFormWidget(),
                SignUpFooterWidget()

              ],
            ),
          ),
        ),
      ),
    );
  }


}
