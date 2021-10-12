// Packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Services
import 'package:persona_generator/services/data_service.dart';
import 'package:persona_generator/services/image_service.dart';

final dataServiceProvider = Provider<DataService>((ref) {
  return DataService();
});

final imageServiceProvider = Provider<ImageService>((ref) {
  return ImageService();
});
