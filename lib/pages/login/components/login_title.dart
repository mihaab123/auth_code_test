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
        const Expanded(
          child: ListTile(
            title: Text(
              "Connect your wallet",
              style: TextStyle(fontSize: 28),
            ),
            subtitle: Text(
              "We’ll send you a confirmation code",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
