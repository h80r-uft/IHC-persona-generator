// Packages
// Packages
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
        ),
        color: Colors.black.withOpacity(0.3),
      ),
      child: Opacity(
        opacity: 0.3,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("This project wouldn't be possible without "),
            Link(
              uri: Uri.parse('https://www.fakepersongenerator.com/'),
              builder: (_, followLink) {
                return TextButton(
                  onPressed: followLink,
                  child: const Text('FakePersonGenerator'),
                );
              },
            ),
            const Text(" (used to generate a persona's data) and "),
            Link(
              uri: Uri.parse('https://thispersondoesnotexist.com/'),
              builder: (_, followLink) {
                return TextButton(
                  onPressed: followLink,
                  child: const Text('ThisPersonDoesNotExist'),
                );
              },
            ),
            const Text(" (persona's picture provider)"),
          ],
        ),
      ),
    );
  }
}
