import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: tFormHeight - 20,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(image: AssetImage(tGoogleLogoImage),width: 20.0,),
              onPressed: (){},
              label: Text(tSignInWithGoogle.toUpperCase())),
        ),
        const SizedBox(height: tFormHeight - 20,),
        TextButton(
          onPressed: (){},
          child: Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1),
                  TextSpan(text: tLogin.toUpperCase())
                ]),),),
      ],
    );
  }
}