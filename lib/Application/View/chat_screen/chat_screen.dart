import 'package:erm/Application/Utils/colors.dart';
import 'package:erm/Application/Utils/common_string.dart';
import 'package:erm/Application/Utils/common_text.dart';
import 'package:erm/Application/Utils/image_path.dart';
import 'package:erm/Application/View/home_screen/home_screen.dart';
import 'package:erm/ViewModel/bottom_navigation_bar_controller.dart';
import 'package:erm/ViewModel/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ChatController chatController = Get.put(ChatController());
  BottomNavigationBarController _bottomNavigationBarController =
      Get.put(BottomNavigationBarController());
  @override
  Widget build(BuildContext context) {
    double baseWidth = 812;
    final size = MediaQuery.of(context).size.height / baseWidth;
    double font = size * 0.97;
    return GetBuilder<ChatController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          bottomSheet: Container(
            height: 80,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: 50 * size,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x332865dc).withAlpha(20),
                        offset: Offset(0 * size, 4 * size),
                        blurRadius: 9 * size,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 12 * font,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        prefixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 2 * size,
                            ),
                            SvgPicture.asset(
                              ImagePath.smile,
                              color: CommonColor.textColor,
                              height: 22 * size,
                              width: 22 * size,
                            ),
                          ],
                        ),
                        suffixIcon: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                ImagePath.attechment,
                                color: CommonColor.textColor,
                                height: 22 * size,
                                width: 22 * size,
                              ),
                            ),
                            SizedBox(
                              width: 12 * size,
                            ),
                            InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                ImagePath.camera,
                                height: 22 * size,
                                width: 22 * size,
                              ),
                            ),
                            SizedBox(
                              width: 20 * size,
                            ),
                          ],
                        ),
                        hintText: 'Message',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(18 * size),
                        hintStyle: TextStyle(
                          fontSize: 12 * font,
                        ),
                        filled: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
                    InkWell(
                      onTap: () {
                        Get.back();
                        _bottomNavigationBarController.updateIndex(2);
                      },
                      child: SvgPicture.asset(
                        ImagePath.backArrow,
                        height: size * 24,
                        width: size * 24,
                      ),
                    ),
                    CommonText(
                      text: HomePageString.leaddDiscussion,
                      fontSize: font * 20,
                      fontWeight: FontWeight.w700,
                      color: CommonColor.white,
                    ),
                    homeButtons(
                      size: size,
                      onTap: () {},
                      image: ImagePath.search,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20 * size,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: Get.width - 44 * size,
                      height: 42 * size,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffe8f1fd), Color(0x00e8f1fd)],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _bottomNavigationBarController.updateIndex(2);
    setState(() {});
    super.dispose();
  }
}
