// Packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    state.copyWith(isLoading: true);
    state = state.copyWith(
      personaData: await _dataService.getPersonaData(),
      personaImage: await _imageService.getPersonaImage(),
      isLoading: false,
    );
  }
}
