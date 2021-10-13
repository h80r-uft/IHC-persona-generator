// Libraries
import 'dart:typed_data';

// Models
import 'package:persona_generator/models/persona_data.dart';

class PageData {
  PageData({
    required this.personaData,
    required this.personaImage,
    required this.personaDescription,
    required this.isLoading,
  });

  final PersonaData? personaData;
  final Uint8List? personaImage;
  final String? personaDescription;

  final bool? isLoading;

  PageData.initial()
      : personaData = null,
        personaImage = null,
        personaDescription = null,
        isLoading = true;

  PageData copyWith({
    PersonaData? personaData,
    Uint8List? personaImage,
    String? personaDescription,
    bool? isLoading,
  }) {
    return PageData(
      personaData: personaData ?? this.personaData,
      personaImage: personaImage ?? this.personaImage,
      personaDescription: personaDescription ?? this.personaDescription,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
