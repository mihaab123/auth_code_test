import 'package:auth_code_test/widgets/list_tile_title.dart';
import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            iconSize: 25,
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
        const ListTileTitle(
          subtitle: 'We’ll send you a confirmation code',
          title: 'Connect your wallet',
        )
      ],
    );
  }
}
