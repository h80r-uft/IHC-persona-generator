// Packages
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonaPage extends ConsumerWidget {
  const PersonaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persona Generator'),
      ),
      body: Center(
        child: Card(
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
                  children: [
                    const Text('Press the button below!'),
                    Card(
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
                    ),
                  ],
                ),
                Container(
                  height: 200.0,
                  width: 200.0,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.5),
                    border: Border.all(color: Colors.black),
                  ),
                  child: const CircleAvatar(
                    foregroundImage: NetworkImage(
                      'https://www.w3schools.com/howto/img_avatar.png',
                    ),
                  ),
                ),
                Container(
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
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: CircularMenu(
        alignment: Alignment.bottomRight,
        items: [
          CircularMenuItem(
            onTap: () {},
            icon: Icons.refresh,
          ),
          CircularMenuItem(
            onTap: () {},
            icon: Icons.save,
          ),
        ],
      ),
    );
  }
}
