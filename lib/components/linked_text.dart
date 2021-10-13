// Packages
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class LinkedText extends StatelessWidget {
  const LinkedText({
    Key? key,
    required this.link,
    required this.text,
  }) : super(key: key);

  final String link;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(link),
      builder: (_, followLink) {
        return InkWell(
          onTap: followLink,
          child: Text(text),
        );
      },
    );
  }
}
