import 'package:get/get.dart';

import '../../models/dog_model.dart';
import '../../service/dog_service.dart';

class HomeController extends GetxController {
  final DogService _dogService = DogService();

  final Rxn<DogModel> dogModel = Rxn<DogModel>();
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchRandomDogImage();
  }

  void fetchRandomDogImage() async {
    isLoading.value = true;
    final result = await _dogService.getRandomDog();
    dogModel.value = result;
    isLoading.value = false;
  }
}
