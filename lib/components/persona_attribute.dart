// Packages
import 'package:flutter/material.dart';
import 'package:persona_generator/utils/color_utils.dart';

class PersonaAttribute extends StatelessWidget {
  const PersonaAttribute({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorUtils.lightChange(color, percentage: 0.5),
      shape: const StadiumBorder(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 4.0, 0),
            child: Text(text),
          ),
          Container(
            margin: const EdgeInsets.all(3.0),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorUtils.lightChange(color, percentage: 0.25),
            ),
            child: Icon(icon),
          ),
        ],
      ),
    );
  }
}
