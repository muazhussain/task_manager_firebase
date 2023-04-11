import 'package:flutter/material.dart';
import 'package:task_manager_firebase/ui/utils/app_colors.dart';
import 'package:task_manager_firebase/ui/widgets/back_icon_button.dart';
import 'package:task_manager_firebase/ui/widgets/button_widget.dart';
import 'package:task_manager_firebase/ui/widgets/text_field_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController taskNameController = TextEditingController();
    TextEditingController taskDetailController = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/addtask1.jpg'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                top: 60,
              ),
              child: const BackIconButton(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextFieldWidget(
                  controller: taskNameController,
                  hintText: 'Task Name',
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldWidget(
                  controller: taskDetailController,
                  hintText: 'Task Detail',
                  maxLine: 5,
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                  backgroundColor: AppColors.mainColor,
                  text: 'Add',
                  textColor: Colors.white,
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
          ],
        ),
      ),
    );
  }
}
