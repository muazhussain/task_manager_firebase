import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_firebase/ui/screens/add_task.dart';
import 'package:task_manager_firebase/ui/screens/all_tasks.dart';
import 'package:task_manager_firebase/ui/utils/app_colors.dart';
import 'package:task_manager_firebase/ui/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
            image: AssetImage('assets/welcome.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: const TextSpan(
                text: 'Hello',
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: '\nFly High',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 15,
                      wordSpacing: 6,
                      letterSpacing: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            ButtonWidget(
              backgroundColor: AppColors.mainColor,
              text: 'Add Task',
              textColor: Colors.white,
              onTap: () {
                Get.to(
                  () => const AddTask(),
                  transition: Transition.zoom,
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              backgroundColor: Colors.white,
              text: 'View All',
              textColor: AppColors.smallTextColor,
              onTap: () {
                Get.to(
                  () => const AllTasks(),
                  transition: Transition.downToUp,
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
