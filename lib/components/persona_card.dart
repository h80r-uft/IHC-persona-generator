// Packages
import 'dart:typed_data';
import 'package:flutter/material.dart';

// Components
import 'package:persona_generator/components/persona_card/persona_attribute.dart';
import 'package:persona_generator/components/persona_card/persona_description.dart';
import 'package:persona_generator/components/persona_card/persona_picture.dart';
import 'package:persona_generator/components/persona_card/persona_stats.dart';

// Models
import 'package:persona_generator/models/persona_data.dart';

// Utils
import 'package:persona_generator/utils/color_utils.dart';

class PersonaCard extends StatelessWidget {
  const PersonaCard({
    Key? key,
    required this.personaData,
    required this.personaImage,
    required this.personaDescription,
  }) : super(key: key);
  final PersonaData personaData;
  final Uint8List personaImage;
  final String personaDescription;

  @override
  Widget build(BuildContext context) {
    final color = ColorUtils.fromName(personaData.color);

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const StadiumBorder(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            PersonaStats(
              children: [
                PersonaAttribute(
                  icon: Icons.family_restroom,
                  text: '${personaData.familyMembers} filhos',
                  color: Colors.blue,
                ),
                PersonaAttribute(
                  icon: Icons.calendar_today,
                  text: '${personaData.age} anos',
                  color: Colors.red,
                ),
              ],
            ),
            PersonaPicture(
              image: personaImage,
              color: color,
            ),
            PersonaDescription(
              name: personaData.name,
              description: personaDescription,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
