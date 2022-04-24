import 'package:auth_code_test/pages/verification_code/verification_code_page.dart';
import 'package:auth_code_test/widgets/main_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
      callback: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => VerificationCodePage()));
      },
      text: 'Continue',
    );
  }
}
