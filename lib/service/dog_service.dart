import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:teste_live_coding/models/dog_model.dart';
import 'package:teste_live_coding/utils/constants.dart';

import '../utils/custom_client.dart';

class DogService {
  final _http = CustomHttp();

  Future<DogModel> getRandomDog() async {
    try {
      final response = await _http.client.get(
        '${ServiceInfo.baseUrl}api/breeds/image/random',
      );
      return DogModel.fromJson(response.data);
    } on DioException catch (error) {
      log(error.toString());
      return DogModel();
    }
  }
}
