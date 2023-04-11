import 'package:flutter/material.dart';
import 'package:task_manager_firebase/ui/utils/app_colors.dart';

class TaskWidget extends StatelessWidget {
  final String text;
  const TaskWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      decoration: const BoxDecoration(
        color: AppColors.taskBackground,
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: AppColors.textGrey,
          ),
        ),
      ),
    );
  }
}
