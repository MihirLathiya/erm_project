import 'package:erm/Application/Utils/colors.dart';
import 'package:erm/ViewModel/media_view_controller.dart';
import 'package:erm/ViewModel/task_managment_controller.dart';
import 'package:erm/Web/view/task_managment/mobile_view_/mobile_task_management_screen.dart';
import 'package:erm/Web/view/task_managment/web_view/web_task_managment_screen.dart';
import 'package:erm/responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManagementScreen extends StatefulWidget {
  const ManagementScreen({Key? key}) : super(key: key);

  @override
  State<ManagementScreen> createState() => _ManagementScreenState();
}

class _ManagementScreenState extends State<ManagementScreen> {
  TaskManagmentController taskManagmentController =
      Get.put(TaskManagmentController());
  MediaViewController mediaViewController = Get.put(MediaViewController());
  @override
  Widget build(BuildContext context) {
    print('------${Get.width}');
    return Scaffold(
      backgroundColor: CommonColor.scaffoldColor,
      body: Responsive.isDesktop(context)
          ? WebTaskManagementScreen()
          : MobileTaskManagementScreen(),
    );
  }
}
