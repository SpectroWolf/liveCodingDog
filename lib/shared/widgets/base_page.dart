import 'package:flutter/material.dart';

import '../style/app_colors.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget bodyContent;

  const BasePage({super.key, required this.title, required this.bodyContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.softBrown,
        title: Text(
          title,
          style: const TextStyle(
            color: AppColors.darkBrown,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Padding(padding: const EdgeInsets.all(8), child: bodyContent),
        ),
      ),
    );
  }
}
