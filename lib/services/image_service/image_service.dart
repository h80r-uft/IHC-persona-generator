import 'dart:typed_data';
import 'package:dio/dio.dart';

class ImageService {
  final _dio = Dio();

  Future<Uint8List> getPersonImage() async {
    final request = await _dio.get<Uint8List>(
      'https://thispersondoesnotexist.com/image',
      options: Options(responseType: ResponseType.bytes),
    );

    if (request.data == null) throw Exception("Can't load image.");

    return request.data!;
  }
}
