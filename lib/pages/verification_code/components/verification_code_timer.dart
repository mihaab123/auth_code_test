import 'package:flutter/material.dart';

class VerificationCodeTimer extends StatelessWidget {
  const VerificationCodeTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      //Didn’t recieve a code? Wait for 57 sec
      text: const TextSpan(children: [
        TextSpan(
            text: "Didn’t recieve a code? ",
            style: TextStyle(fontSize: 15, color: Colors.black, height: 1.5)),
        TextSpan(
            text: "Wait for 57 sec",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                height: 1.5)),
      ]),
    );
  }
}
