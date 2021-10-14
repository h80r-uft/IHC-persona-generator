// Packages
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:translator/translator.dart';

// Models
import 'package:persona_generator/models/page_data.dart';

// Services
import 'package:persona_generator/services/data_service/data_service.dart';
import 'package:persona_generator/services/image_service/image_service.dart';

class PageNotifier extends StateNotifier<PageData> {
  PageNotifier(this._dataService, this._imageService)
      : super(PageData.initial()) {
    generatePersona();
  }

  final DataService _dataService;
  final ImageService _imageService;

  void generatePersona() async {
    state = state.copyWith(isLoading: true);
    state = state.copyWith(
      personaData: await _dataService.getPersonaData(),
      personaImage: await _imageService.getPersonaImage(),
    );
    state = state.copyWith(
      personaDescription: await _generateDescription(),
      isLoading: false,
    );
  }

  void refreshImage() async {
    state = state.copyWith(personaImage: await _imageService.getPersonaImage());
  }

  Future<String> _generateDescription() async {
    const templates = [
      'Is a %ES% as a %JT% in the industry of %ID%. Likes %IT% and describes themselves as %BI%',
      '%BI% A %ES% in the industry of %ID%. Is a %JT% interested in %IT%',
      'Working in the field of %ID%, loves %IT%, currently is a %ES% as %JT%. %BI%'
    ];

    final data = state.personaData!;

    final dataMap = {
      '%ES%': data.employmentStatus,
      '%JT%': data.jobTitle,
      '%ID%': data.industry,
      '%IT%': data.interest,
      '%BI%': data.biography
    };

    var description = templates[Random().nextInt(templates.length)];

    for (final key in dataMap.keys) {
      description = description.replaceFirst(key, dataMap[key] ?? 'ERROR');
    }

    return (await description.translate(to: 'pt')).text;
  }
}
