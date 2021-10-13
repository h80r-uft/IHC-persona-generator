// Packages
import 'package:flutter/material.dart';

class PersonaAttribute extends StatelessWidget {
  const PersonaAttribute({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      shape: const StadiumBorder(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Text('Texto'),
          ),
          Container(
            margin: const EdgeInsets.all(3.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple,
            ),
            child: const Icon(Icons.star_border_purple500),
          ),
        ],
      ),
    );
  }
}
