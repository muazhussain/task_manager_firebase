import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_firebase/ui/utils/app_colors.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: AppColors.secondaryColor,
      ),
    );
  }
}
