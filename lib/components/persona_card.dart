// Packages
import 'package:flutter/material.dart';

// Components
import 'package:persona_generator/components/persona_attribute.dart';
import 'package:persona_generator/components/persona_description.dart';
import 'package:persona_generator/components/persona_picture.dart';

class PersonaCard extends StatelessWidget {
  const PersonaCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: const StadiumBorder(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text('Press the button below!'),
                PersonaAttribute(
                  icon: Icons.family_restroom,
                  text: '3 filhos',
                  color: Colors.blue,
                ),
              ],
            ),
            const PersonaPicture(
              image: 'https://www.w3schools.com/howto/img_avatar.png',
              color: Colors.blue,
            ),
            const PersonaDescription(
              name: 'Jack L Dardar',
              description:
                  'Sed accumsan ut elit suscipit eleifend. Suspendisse eget euismod arcu. Cras auctor sollicitudin tellus, id egestas dolor elementum sed. Donec imperdiet quis mauris eu laoreet. Sed urna velit, imperdiet sit amet erat non, molestie vehicula mauris. Ut eu auctor quam. In iaculis eros nec faucibus cursus. Duis feugiat posuere posuere. Ut elementum id felis hendrerit tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et bibendum enim. Cras varius ante sit amet arcu efficitur pharetra. Curabitur lobortis, lorem ac dapibus aliquam, eros sem tempus magna, hendrerit hendrerit nisi lectus in est.',
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
