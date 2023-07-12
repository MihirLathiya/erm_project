import 'package:erm/Application/Utils/image_path.dart';
import 'package:erm/Application/View/home_screen/home_screen.dart';
import 'package:erm/Application/View/media_view/create_task_screen.dart';
import 'package:erm/Application/View/media_view/media_view_screen.dart';
import 'package:erm/Application/View/task_managment/task_management_screen.dart';
import 'package:erm/Web/view/task_managment/web_view/management_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController {
  int page = 0;
  updateIndex(int val) {
    page = val;
    update();
  }

  List unSelectIcon = [
    BottomBarPath.home,
    BottomBarPath.gallery,
    BottomBarPath.message,
    BottomBarPath.taskSquare,
  ];
  List selectedIcon = [
    BottomBarPath.home2,
    BottomBarPath.gallery2,
    BottomBarPath.message,
    BottomBarPath.taskSquare2,
  ];

  List screenList = [
    HomeScreen(),
    MediaViewScreen(),
    CreateTaskScreen(),
    Container(),
    TaskManagementScreen(),
  ];

  List webScreenList = [
    HomeScreen(),
    ManagementScreen(),
    SizedBox(),
  ];

  bool hover1 = false;

  updateHover1(bool val) {
    hover1 = val;
    update();
  }

  bool hover2 = false;

  updateHover2(bool val) {
    hover2 = val;
    update();
  }

  bool hover3 = false;

  updateHover3(bool val) {
    hover3 = val;
    update();
  }

  // /// SOCIAL LOGIN
  // ApiResponse _socialApiResponse =
  // ApiResponse.initial(message: 'Initialization');
  //
  // ApiResponse get socialApiResponse => _socialApiResponse;
  //
  // Future<void> socialLoginViewModel({Map<String, dynamic>? model}) async {
  //   _socialApiResponse = ApiResponse.loading(message: 'Loading');
  //   update();
  //   try {
  //     SocialloginResponseModel socialResponse =
  //     await AuthRepo().socialLoginRepo(body: model);
  //     print("SocialloginResponseModel=response==>$socialResponse");
  //
  //     _socialApiResponse = ApiResponse.complete(socialResponse);
  //   } catch (e) {
  //     print("SocialloginResponseModel=e==>$e");
  //
  //     _socialApiResponse = ApiResponse.error(message: 'error');
  //   }
  //   update();
  // }
}
