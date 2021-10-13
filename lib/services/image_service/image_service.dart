// Libraries
import 'dart:typed_data';

// Packages
import 'package:dio/dio.dart';

/// Persona Picture Generation Service.
///
/// This service is responsible for generating a persona's picture from
/// `https://thispersondoesnotexist.com/`.
class ImageService {
  final _dio = Dio();

  /// Generate a persona's image.
  ///
  /// This image is usable in a [Image.memory] widget.
  Future<Uint8List> getPersonaImage() async {
    final request = await _dio.get<Uint8List>(
      'https://thispersondoesnotexist.com/image',
      options: Options(responseType: ResponseType.bytes),
    );

    if (request.data == null) throw Exception("Can't load image.");

    return request.data!;
  }
}
