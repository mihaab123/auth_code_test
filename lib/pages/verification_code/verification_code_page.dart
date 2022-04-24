import 'package:auth_code_test/pages/verification_code/components/verification_code_field.dart';
import 'package:auth_code_test/pages/verification_code/components/verification_code_timer.dart';
import 'package:auth_code_test/pages/verification_code/components/verification_code_title.dart';
import 'package:flutter/material.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const VerificationCodeTitle(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerificationCodeField(),
                  const VerificationCodeTimer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
