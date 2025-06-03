import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_live_coding/modules/home/home_controller.dart';
import 'package:teste_live_coding/shared/widgets/base_page.dart';

import '../../shared/style/app_colors.dart';
import '../../utils/strings.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: AppStrings.homePageTitle,
      bodyContent: Center(
        child: Obx(() {
          final model = controller.dogModel.value;

          if (controller.isLoading.value) {
            return const CircularProgressIndicator();
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (model != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    model.message ?? '',
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    AppStrings.imageErrorMessage,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.fetchRandomDogImage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.softBrown,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                child: const Text(AppStrings.buttonText),
              ),
            ],
          );
        }),
      ),
    );
  }
}
