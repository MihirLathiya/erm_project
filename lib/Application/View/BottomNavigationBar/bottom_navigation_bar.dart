import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:erm/Application/Utils/colors.dart';
import 'package:erm/Application/Utils/common_string.dart';
import 'package:erm/Application/Utils/common_text.dart';
import 'package:erm/Application/Utils/image_path.dart';
import 'package:erm/Application/View/chat_screen/chat_screen.dart';
import 'package:erm/Application/View/home_screen/home_screen.dart';
import 'package:erm/ViewModel/bottom_navigation_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  BottomNavigationBarController _bottomNavigationBarController =
      Get.put(BottomNavigationBarController());
  final drawerKey = GlobalKey<ScaffoldState>();

  List screen = [];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 812;
    final size = MediaQuery.of(context).size.height / baseWidth;
    double font = size * 0.97;
    return GetBuilder<BottomNavigationBarController>(
      builder: (controller) {
        return Scaffold(
          key: drawerKey,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          drawer: GetPlatform.isWindows ? Drawer() : SizedBox(),
          backgroundColor: CommonColor.scaffoldColor,
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: Color(0xff2865DC),
            buttonBackgroundColor: Color(0xff2865DC),
            key: _bottomNavigationKey,
            index: controller.page,
            items: <Widget>[
              SvgPicture.asset(
                controller.page == 0 ? BottomBarPath.home2 : BottomBarPath.home,
                height: 24.sp,
                width: 24.sp,
              ),
              SvgPicture.asset(
                controller.page == 1
                    ? BottomBarPath.gallery2
                    : BottomBarPath.gallery,
                height: 24.sp,
                width: 24.sp,
              ),
              Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
              SvgPicture.asset(
                controller.page == 2
                    ? BottomBarPath.message
                    : BottomBarPath.message,
                color: controller.page == 2 ? Colors.white : Color(0xffA9B4D6),
                height: 24.sp,
                width: 24.sp,
              ),
              SvgPicture.asset(
                controller.page == 3
                    ? BottomBarPath.taskSquare2
                    : BottomBarPath.taskSquare,
                height: 24.sp,
                width: 24.sp,
              ),
            ],
            onTap: (index) {
              controller.updateIndex(index);
              if (index == 3) {
                Get.to(ChatScreen());
              }
            },
          ),
          body: Column(
            children: [
              Container(
                width: Get.width,
                height: size * 98,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: CommonColor.mainColor.withAlpha(100),
                      offset: Offset(2, 2),
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                  color: CommonColor.mainColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                padding: EdgeInsets.only(
                    top: size * 20, left: size * 20, right: size * 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (controller.page == 0)
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          ImagePath.menu,
                          height: size * 24,
                          width: size * 24,
                        ),
                      ),
                    if (controller.page != 0)
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          ImagePath.backArrow,
                          height: size * 24,
                          width: size * 24,
                        ),
                      ),
                    CommonText(
                      text: controller.page == 0
                          ? HomePageString.leadDetails
                          : controller.page == 1
                              ? HomePageString.mediaView
                              : controller.page == 2
                                  ? HomePageString.leaddDiscussion
                                  : HomePageString.taskManagment,
                      fontSize: font * 20,
                      fontWeight: FontWeight.w700,
                      color: CommonColor.white,
                    ),
                    Row(
                      children: [
                        homeButtons(
                          size: size,
                          onTap: () {},
                          image: ImagePath.search,
                        ),
                        if (controller.page != 2)
                          SizedBox(
                            width: size * 6,
                          ),
                        if (controller.page != 2)
                          homeButtons(
                            size: size,
                            onTap: () {},
                            image: ImagePath.notification,
                          ),
                        if (controller.page != 1)
                          SizedBox(
                            width: size * 6,
                          ),
                        if (controller.page != 1)
                          homeButtons(
                            size: size,
                            onTap: () {},
                            image: ImagePath.filter,
                          ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: controller.screenList[controller.page],
              )
            ],
          ),
        );
      },
    );
  }
}
// floatingActionButton: SizedBox(
//   height: 64,
//   width: 64,
//   child: FloatingActionButton(
//     isExtended: true,
//     onPressed: () {
//       controller.updateIndex(4);
//     },
//     backgroundColor: CommonColor.mainColor,
//     child: SvgPicture.asset(
//       ImagePath.add,
//       height: 30.sp,
//       width: 30.sp,
//     ),
//   ),
// ),
// bottomNavigationBar: BottomAppBar(
//   //bottom navigation bar on scaffold
//   height: 80,
//   color: CommonColor.mainColor,
//   shape: CircularNotchedRectangle(), //shape of notch
//   notchMargin: 12,
//   child: Row(
//     mainAxisSize: MainAxisSize.max,
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: <Widget>[
//       Padding(
//         padding: EdgeInsets.only(left: 8.sp),
//         child: IconButton(
//           icon: SvgPicture.asset(
//             controller.page == 0
//                 ? BottomBarPath.home2
//                 : BottomBarPath.home,
//             height: 24.sp,
//             width: 24.sp,
//           ),
//           onPressed: () {
//             controller.updateIndex(0);
//           },
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(right: 30.sp),
//         child: IconButton(
//           icon: SvgPicture.asset(
//             controller.page == 1
//                 ? BottomBarPath.gallery2
//                 : BottomBarPath.gallery,
//             height: 24.sp,
//             width: 24.sp,
//           ),
//           onPressed: () {
//             controller.updateIndex(1);
//           },
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(left: 15.sp),
//         child: IconButton(
//           icon: SvgPicture.asset(
//             controller.page == 2
//                 ? BottomBarPath.message
//                 : BottomBarPath.message,
//             color: controller.page == 2
//                 ? Colors.white
//                 : Color(0xffA9B4D6),
//             height: 24.sp,
//             width: 24.sp,
//           ),
//           onPressed: () {
//             Get.to(() => ChatScreen());
//
//             controller.updateIndex(2);
//           },
//         ),
//       ),
//       Padding(
//         padding: EdgeInsets.only(right: 8.sp),
//         child: IconButton(
//           icon: SvgPicture.asset(
//             controller.page == 3
//                 ? BottomBarPath.taskSquare2
//                 : BottomBarPath.taskSquare,
//             height: 24.sp,
//             width: 24.sp,
//           ),
//           onPressed: () {
//             controller.updateIndex(3);
//           },
//         ),
//       ),
//     ],
//   ),
// ),
