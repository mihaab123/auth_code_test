import 'package:auth_code_test/pages/verification_code/verification_code_page.dart';
import 'package:auth_code_test/utils/firebase_utils.dart';
import 'package:auth_code_test/widgets/main_button.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final TextEditingController controller;
  const LoginButton({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
      callback: () async {
        if (!isEmail(controller.text) && !isPhone(controller.text)) {
          debugPrint("Wrong phone or email");
        } else if (isPhone(controller.text)) {
          await FireBaseUtils().verifyPhoneNumber(controller.text);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VerificationCodePage()));
        } else if (isEmail(controller.text)) {
          await FireBaseUtils().verifyPhoneNumber(controller.text);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VerificationCodePage()));
        }
      },
      text: 'Continue',
    );
  }

  bool isEmail(String input) => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(input);

  bool isPhone(String input) =>
      RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
          .hasMatch(input);
}
