import 'package:flutter/material.dart';

class LoginPrivacy extends StatelessWidget {
  const LoginPrivacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //By signing up I agree to Zëdfi’s Privacy Policy and Terms of Use and allow Zedfi to use your information for future Marketing purposes.
    return Padding(
      padding: const EdgeInsets.only(top: 21),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: "By signing up I agree to Zëdfi’s ",
              style: TextStyle(fontSize: 15, color: Colors.black, height: 1.5)),
          TextSpan(
              text: "Privacy Policy",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5)),
          TextSpan(
              text: " and ",
              style: TextStyle(fontSize: 15, color: Colors.black, height: 1.5)),
          TextSpan(
              text: "Terms of Use",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5)),
          TextSpan(
              text: " and allow Zedfi to use your information for future ",
              style: TextStyle(fontSize: 15, color: Colors.black, height: 1.5)),
          TextSpan(
              text: "Marketing purposes",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5)),
          TextSpan(
              text: ".",
              style: TextStyle(fontSize: 12, color: Colors.black, height: 1.5)),
        ]),
      ),
    );
  }
}
