import 'package:dio/dio.dart';

import '../../constants/strings.dart';

class CharacterApi {
  late Dio _dio;

  CharacterApi() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError:
          true, // gie me some errors message when debigging
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );

    _dio = Dio(options);
  }

  Future<List<dynamic>> getallCharacters() async {
    try {
      Response response = await _dio.get('character');
      print(response.data.toString());
      return response.data;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return [];
    }
  }
}
