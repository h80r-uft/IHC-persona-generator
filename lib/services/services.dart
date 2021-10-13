/// Service Singletons are created using [Provider].

// Packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Services
import 'package:persona_generator/services/data_service/data_service.dart';
import 'package:persona_generator/services/image_service/image_service.dart';

final dataServiceProvider = Provider<DataService>((ref) => DataService());

final imageServiceProvider = Provider<ImageService>((ref) => ImageService());
