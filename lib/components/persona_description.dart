// Packages
import 'package:flutter/material.dart';
import 'package:persona_generator/utils/color_utils.dart';

class PersonaDescription extends StatelessWidget {
  const PersonaDescription({
    Key? key,
    required this.name,
    required this.description,
    required this.color,
  }) : super(key: key);

  final String name;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      padding: const EdgeInsets.fromLTRB(20.0, 0, 50.0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Divider(
            color: ColorUtils.lightChange(
              color,
              percentage: 0.4,
            ),
            indent: 50.0,
            endIndent: 50.0,
          ),
          Text(
            description,
            maxLines: 8,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
            style: const TextStyle(fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
