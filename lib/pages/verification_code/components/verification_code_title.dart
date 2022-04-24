import 'package:auth_code_test/widgets/list_tile_title.dart';
import 'package:flutter/material.dart';

class VerificationCodeTitle extends StatelessWidget {
  const VerificationCodeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ListTileTitle(
          subtitle: 'Enter the confirmation code below ',
          title: 'We’ve sent you a code',
        )
      ],
    );
  }
}
