// Packages
import 'package:flutter/material.dart';

// Components
import 'package:persona_generator/components/persona_attribute.dart';

class PersonaStats extends StatelessWidget {
  const PersonaStats({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<PersonaAttribute> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: children,
      ),
    );
  }
}
