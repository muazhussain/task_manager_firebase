import 'package:flutter/material.dart';
import 'package:task_manager_firebase/ui/utils/app_colors.dart';
import 'package:task_manager_firebase/ui/widgets/back_icon_button.dart';
import 'package:task_manager_firebase/ui/widgets/button_widget.dart';
import 'package:task_manager_firebase/ui/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = [
      "Try harder",
      "Try smarter",
      "Try smarter",
      "Try smarter",
      "Try smarter",
      "Try smarter",
      "Try smarter",
      "Try smarter",
      "Try smarter",
      "Try smarter",
      "Try smarter",
      "Try smarter"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 60,
              left: 20,
            ),
            alignment: Alignment.topLeft,
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/header1.jpg'),
              ),
            ),
            child: const BackIconButton(),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            margin: const EdgeInsets.only(
              bottom: 20,
            ),
            child: Row(
              children: <Widget>[
                const Icon(
                  Icons.home,
                  color: AppColors.secondaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.add_circle,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(),
                ),
                const Icon(
                  Icons.calendar_month,
                  color: AppColors.secondaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '2',
                  style: TextStyle(
                    color: AppColors.secondaryColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  background: Container(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    color: AppColors.dismissableLeftColor.withOpacity(0.5),
                    alignment: Alignment.centerLeft,
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  secondaryBackground: Container(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    color: AppColors.dismissableRightColor,
                    alignment: Alignment.centerRight,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  onDismissed: (direction) {},
                  confirmDismiss: (direction) async {
                    if (direction == DismissDirection.startToEnd) {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Container(
                            height: MediaQuery.of(context).size.height / 3,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  AppColors.bottomSheetColor.withOpacity(0.6),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ButtonWidget(
                                  backgroundColor: AppColors.mainColor,
                                  text: 'View',
                                  textColor: Colors.white,
                                  onTap: () {},
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ButtonWidget(
                                  backgroundColor: AppColors.mainColor,
                                  text: 'Edit',
                                  textColor: AppColors.secondaryColor,
                                  onTap: () {},
                                ),
                              ],
                            ),
                          );
                        },
                      );
                      return false;
                    }
                    return true;
                  },
                  key: ObjectKey(index),
                  child: Container(
                    margin: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: TaskWidget(
                      text: tasks[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
