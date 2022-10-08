import 'package:login_ui_template_flutter/src/constants/image_strings.dart';
import 'package:login_ui_template_flutter/src/constants/sizes.dart';
import 'package:login_ui_template_flutter/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/login_footer_widget.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                LoginHeaderWidget(),
                const LoginFormWidget(),
                const LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


