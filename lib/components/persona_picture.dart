// Packages
import 'package:flutter/material.dart';

// Utils
import 'package:persona_generator/utils/color_utils.dart';

class PersonaPicture extends StatelessWidget {
  const PersonaPicture({
    Key? key,
    required this.image,
    required this.color,
  }) : super(key: key);

  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 200.0,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorUtils.lightChange(color, percentage: 0.4).withOpacity(0.5),
        border: Border.all(
            color: ColorUtils.lightChange(
          color,
          percentage: 0.6,
        )),
      ),
      child: CircleAvatar(
        foregroundImage: NetworkImage(image),
      ),
    );
  }
}
