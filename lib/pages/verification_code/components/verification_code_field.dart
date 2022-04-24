import 'dart:async';

import 'package:auth_code_test/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCodeField extends StatelessWidget {
  StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();
  VerificationCodeField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 6,
      obscureText: true,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 69,
          fieldWidth: 48,
          activeFillColor: Colors.white,
          inactiveFillColor: Colors.white,
          selectedFillColor: Colors.white,
          selectedColor: borderColor,
          activeColor: borderColor,
          inactiveColor: borderColor),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      animationDuration: const Duration(milliseconds: 300),
      errorAnimationController: errorController, // Pass it here
      onChanged: (value) {}, appContext: context,
    );
  }
}
