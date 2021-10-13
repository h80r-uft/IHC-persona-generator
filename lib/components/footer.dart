// Packages
import 'package:flutter/material.dart';

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
          children: const [
            Text("This project wouldn't be possible without "),
            Text('FakePersonGenerator'),
            Text(" (used to generate a persona's data) and "),
            Text('ThisPersonDoesNotExist'),
            Text(" (persona's picture provider)"),
          ],
        ),
      ),
    );
  }
}
