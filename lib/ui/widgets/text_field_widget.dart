import 'package:flutter/material.dart';
import 'package:task_manager_firebase/ui/utils/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int? maxLine;
  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine ?? 1,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.textHolder,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
