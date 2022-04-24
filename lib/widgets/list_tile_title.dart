import 'package:flutter/material.dart';

class ListTileTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const ListTileTitle({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
