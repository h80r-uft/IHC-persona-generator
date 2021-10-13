// Packages
import 'package:flutter/material.dart';

class PersonaDescription extends StatelessWidget {
  const PersonaDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Jack L Dardar',
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Divider(
            color: Colors.blue,
            indent: 50.0,
            endIndent: 50.0,
          ),
          Text(
            'Sed accumsan ut elit suscipit eleifend. Suspendisse eget euismod arcu. Cras auctor sollicitudin tellus, id egestas dolor elementum sed. Donec imperdiet quis mauris eu laoreet. Sed urna velit, imperdiet sit amet erat non, molestie vehicula mauris. Ut eu auctor quam. In iaculis eros nec faucibus cursus. Duis feugiat posuere posuere. Ut elementum id felis hendrerit tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et bibendum enim. Cras varius ante sit amet arcu efficitur pharetra. Curabitur lobortis, lorem ac dapibus aliquam, eros sem tempus magna, hendrerit hendrerit nisi lectus in est.',
            maxLines: 8,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}
