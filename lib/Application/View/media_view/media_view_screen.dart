import 'package:erm/Application/Utils/colors.dart';
import 'package:erm/Application/Utils/common_string.dart';
import 'package:erm/Application/Utils/image_path.dart';
import 'package:erm/Application/View/media_view/follow_up_screen.dart';
import 'package:erm/ViewModel/media_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MediaViewScreen extends StatefulWidget {
  const MediaViewScreen({Key? key}) : super(key: key);

  @override
  State<MediaViewScreen> createState() => _MediaViewScreenState();
}

class _MediaViewScreenState extends State<MediaViewScreen> {
  MediaViewController mediaViewController = Get.put(MediaViewController());
  @override
  Widget build(BuildContext context) {
    double baseWidth = 812;
    final size = MediaQuery.of(context).size.height / baseWidth;
    double font = size * 0.97;
    return GetBuilder<MediaViewController>(
      builder: (controller) {
        return Column(
          children: [
            CommonSizedBox(height: 50 * size),
            Stack(
              clipBehavior: Clip.none,
              children: [
                GetPlatform.isDesktop
                    ? Positioned(
                        top: -20 * size,
                        child: titleContainer(size),
                      )
                    : Positioned(
                        top: -20 * size,
                        left: 20 * size,
                        right: 20 * size,
                        child: titleContainer(size),
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.updateFollowUp(0);
                      },
                      child: Container(
                        width: 114 * size,
                        height: 40 * size,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: controller.followUp == 1
                                  ? Color(0x332865dc)
                                  : Colors.transparent,
                              offset: Offset(0 * size, 4 * size),
                              blurRadius: 7.5 * size,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8),
                          color: controller.followUp == 0
                              ? CommonColor.mainColor
                              : CommonColor.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Follow up",
                              style: TextStyle(
                                fontSize: 14 * font,
                                color: controller.followUp == 0
                                    ? CommonColor.white
                                    : CommonColor.black,
                              ),
                            ),
                            CommonSizedBox(width: 6 * size),
                            SvgPicture.asset(
                              ImagePath.arrowDown,
                              height: 18 * size,
                              width: 18 * size,
                              color: controller.followUp == 0
                                  ? CommonColor.white
                                  : CommonColor.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CommonSizedBox(width: 8 * size),
                    InkWell(
                      onTap: () {
                        controller.updateFollowUp(1);
                      },
                      child: Container(
                        width: 84 * size,
                        height: 40 * size,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: controller.followUp == 0
                                  ? Color(0x332865dc)
                                  : Colors.transparent,
                              offset: Offset(0 * size, 4 * size),
                              blurRadius: 7.5 * size,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8),
                          color: controller.followUp == 1
                              ? CommonColor.mainColor
                              : CommonColor.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Task",
                              style: TextStyle(
                                fontSize: 14 * font,
                                color: controller.followUp == 1
                                    ? CommonColor.white
                                    : CommonColor.black,
                              ),
                            ),
                            CommonSizedBox(width: 6 * size),
                            SvgPicture.asset(
                              ImagePath.arrowDown,
                              height: 18 * size,
                              width: 18 * size,
                              color: controller.followUp == 1
                                  ? CommonColor.white
                                  : CommonColor.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // CommonSizedBox(height: 20 * size),
            FollowUpScreen(controller: controller)
          ],
        );
      },
    );
  }

  Row titleContainer(double size) {
    return Row(
      children: [
        Container(
          width: Get.width - (GetPlatform.isDesktop ? 197 * size : 44 * size),
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
    );
  }
}
