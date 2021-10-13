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
          shape: const StadiumBorder(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Press the button below!'),
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
