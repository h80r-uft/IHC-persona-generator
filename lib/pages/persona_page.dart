// Packages
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Components
import 'package:persona_generator/components/persona_card.dart';
import 'package:persona_generator/components/footer.dart';

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
      bottomSheet: const Footer(),
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
