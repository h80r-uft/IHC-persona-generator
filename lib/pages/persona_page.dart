// Packages
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Components
import 'package:persona_generator/components/persona_card.dart';

class PersonaPage extends ConsumerWidget {
  const PersonaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persona Generator'),
      ),
      body: const Center(
        child: PersonaCard(),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
          ),
          color: Colors.black.withOpacity(0.3),
        ),
        child: Opacity(
          opacity: 0.3,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("This project wouldn't be possible without "),
              Text('FakePersonGenerator'),
              Text(" (used to generate a persona's data) and "),
              Text('ThisPersonDoesNotExist'),
              Text(" (persona's picture provider)"),
            ],
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
