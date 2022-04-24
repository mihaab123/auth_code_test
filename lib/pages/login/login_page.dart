import 'package:auth_code_test/pages/login/components/login_button.dart';
import 'package:auth_code_test/pages/login/components/login_privacy.dart';
import 'package:auth_code_test/pages/login/components/login_title.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LoginTitle(),
              Column(
                children: const [LoginButton(), LoginPrivacy()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
