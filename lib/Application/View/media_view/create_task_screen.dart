import 'package:erm/Application/Utils/colors.dart';
import 'package:erm/Application/Utils/common_string.dart';
import 'package:erm/Application/Utils/image_path.dart';
import 'package:erm/Application/View/media_view/util/dialog_box.dart';
import 'package:erm/ViewModel/media_view_controller.dart';
import 'package:erm/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CreateTaskScreen extends StatelessWidget {
  // final MediaViewController controller;
  CreateTaskScreen({
    Key? key,
  }) : super(key: key);
  MediaViewController _mediaViewController = Get.put(MediaViewController());
  @override
  Widget build(BuildContext context) {
    double baseWidth = 812;
    final size = MediaQuery.of(context).size.height / baseWidth;
    final width = MediaQuery.of(context).size.width;
    double font = size * 0.97;
    return Scaffold(
      body: GetBuilder<MediaViewController>(
        builder: (controller) {
          return MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.isDesktop(context) ? 250 * size : 20,
                  vertical: 10 * size),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Container(
                    width: Get.width,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15 * size,
                      vertical: 25 * size,
                    ),
                    margin: EdgeInsets.only(top: 10 * size),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x332865dc),
                          offset: Offset(0 * size, 4 * size),
                          blurRadius: 7.5 * size,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Project/ Create a Task",
                              style: TextStyle(
                                fontSize: 16 * font,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                attechmentDialogBox(size, font,
                                    controller: controller);
                              },
                              child: Container(
                                padding: EdgeInsets.all(
                                  8 * size,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: CommonColor.textColor),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x332865dc).withAlpha(20),
                                      offset: Offset(0 * size, 4 * size),
                                      blurRadius: 9 * size,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      ImagePath.attechment,
                                      height: 18 * size,
                                      width: 18 * size,
                                    ),
                                    CommonSizedBox(width: 6 * size),
                                    Text(
                                      "Attchments",
                                      style: TextStyle(
                                        fontSize: 14 * font,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        CommonSizedBox(height: 27 * size),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              10 * size, 10 * size, 10 * size, 10 * size),
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: Color(0xffe8f1fd),
                            borderRadius: BorderRadius.circular(8 * size),
                          ),
                          child: Text(
                            ' Task Title:',
                            style: TextStyle(
                              fontSize: 16 * font,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff262525),
                            ),
                          ),
                        ),
                        CommonSizedBox(height: 15 * size),
                        Row(
                          children: [
                            SvgPicture.asset(
                              ImagePath.menu,
                              color: Colors.black,
                              height: 18 * size,
                              width: 18 * size,
                            ),
                            CommonSizedBox(width: 4 * size),
                            Text(
                              "Description",
                              style: TextStyle(
                                fontSize: 16 * font,
                              ),
                            )
                          ],
                        ),
                        CommonSizedBox(height: 12 * size),
                        Container(
                          height: 80 * size,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: CommonColor.textColor),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x332865dc).withAlpha(20),
                                offset: Offset(0 * size, 4 * size),
                                blurRadius: 9 * size,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: TextField(
                              style: TextStyle(
                                fontSize: 12 * font,
                              ),
                              maxLines: 10,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                hintText: 'Enter Description',
                                border: InputBorder.none,
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
                  CommonSizedBox(height: 20 * size),
                  Container(
                    padding: EdgeInsets.all(15 * size),
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Color(0xffe8f1fd),
                      borderRadius: BorderRadius.circular(1 * size),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ' Task Title:',
                              style: TextStyle(
                                fontSize: 16 * font,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff262525),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 114 * size,
                                height: 33 * size,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x332865dc),
                                      offset: Offset(0 * size, 4 * size),
                                      blurRadius: 7.5 * size,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  color: CommonColor.mainColor,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Actions",
                                      style: TextStyle(
                                        fontSize: 14 * font,
                                        color: CommonColor.white,
                                      ),
                                    ),
                                    CommonSizedBox(width: 6 * size),
                                    SvgPicture.asset(
                                      ImagePath.arrowDown,
                                      height: 18 * size,
                                      width: 18 * size,
                                      color: CommonColor.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        CommonSizedBox(height: 16 * size),
                        Text(
                          "Assigners to:",
                          style: TextStyle(
                            fontSize: 12 * font,
                          ),
                        ),
                        CommonSizedBox(height: 8 * size),
                        InkWell(
                          onTap: () {
                            addUserDialogBox(size, font,
                                controller: controller);
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                suffixIcon: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      ImagePath.search,
                                      height: 18 * size,
                                      width: 18 * size,
                                    ),
                                  ],
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 12 * font,
                                  fontWeight: FontWeight.w400,
                                ),
                                hintText: 'Maciej kalaska',
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        CommonSizedBox(height: 15 * size),
                        Text(
                          "Due Date",
                          style: TextStyle(
                            fontSize: 12 * font,
                          ),
                        ),
                        CommonSizedBox(height: 8 * size),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: TextField(
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 12 * font,
                                fontWeight: FontWeight.w400,
                              ),
                              hintText: 'Due in 5 days',
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        CommonSizedBox(height: 15 * size),
                        Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              addWatcherDialogBox(size, font,
                                  controller: controller);
                            },
                            child: Container(
                              width: 143 * size,
                              height: 33 * size,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x332865dc),
                                    offset: Offset(0 * size, 4 * size),
                                    blurRadius: 7.5 * size,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(8),
                                color: CommonColor.mainColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    ImagePath.add,
                                    height: 18 * size,
                                    width: 18 * size,
                                    color: CommonColor.white,
                                  ),
                                  CommonSizedBox(width: 6 * size),
                                  Text(
                                    "Add Watchers",
                                    style: TextStyle(
                                      fontSize: 14 * font,
                                      color: CommonColor.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CommonSizedBox(height: 30 * size),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
