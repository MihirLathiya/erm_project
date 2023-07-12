import 'package:dotted_border/dotted_border.dart';
import 'package:erm/Application/Utils/colors.dart';
import 'package:erm/Application/Utils/common_string.dart';
import 'package:erm/Application/Utils/image_path.dart';
import 'package:erm/Application/View/media_view/util/button.dart';
import 'package:erm/ViewModel/media_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

/// FOLLOW UP SCREEN
class FollowUpScreen extends StatelessWidget {
  final MediaViewController controller;

  const FollowUpScreen({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 812;
    final size = MediaQuery.of(context).size.height / baseWidth;
    double font = size * 0.97;
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding:
            EdgeInsets.only(left: 20 * size, right: 20 * size, top: 20 * size),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            width: Get.width,
            padding: EdgeInsets.symmetric(
              horizontal: 15 * size,
              vertical: 20 * size,
            ),
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
                Container(
                  width: Get.width,
                  height: 40 * size,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffe8f1fd),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10 * size),
                  child: Row(
                    children: [
                      Text(
                        MediaPageString.followUps,
                        style: TextStyle(
                          fontSize: 16 * font,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      FollowUpButton(
                        size: size,
                        imagePath: ImagePath.gallary,
                        onTap: () {},
                      ),
                      CommonSizedBox(width: 8 * size),
                      FollowUpButton(
                        size: size,
                        imagePath: ImagePath.edit,
                        onTap: () {},
                      ),
                      CommonSizedBox(width: 8 * size),
                      FollowUpButton(
                        size: size,
                        imagePath: ImagePath.add,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                CommonSizedBox(height: 14 * size),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MediaPageString.assignUser,
                      style: TextStyle(
                        fontSize: 14 * font,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "April 30 , 2023 at 2.40 pm",
                      style: TextStyle(
                          fontSize: 12 * font,
                          fontWeight: FontWeight.w400,
                          color: CommonColor.textColor),
                    )
                  ],
                ),
                CommonSizedBox(height: 16 * size),
                Row(
                  children: [
                    SvgPicture.asset(
                      ImagePath.attechment,
                      height: 12 * size,
                      width: 12 * size,
                    ),
                    CommonSizedBox(width: 3 * size),
                    Text(
                      MediaPageString.attachment,
                      style: TextStyle(
                        fontSize: 12 * font,
                        fontWeight: FontWeight.w400,
                        color: CommonColor.textColor,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 18 * size,
                        width: 18 * size,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffe8f1fd),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            ImagePath.trash,
                            height: 12 * size,
                            width: 12 * size,
                          ),
                        ),
                      ),
                    ),
                    CommonSizedBox(width: 11 * size),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 18 * size,
                        width: 18 * size,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffe8f1fd),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            ImagePath.add,
                            height: 12 * size,
                            width: 12 * size,
                            color: CommonColor.mainColor,
                          ),
                        ),
                      ),
                    ),
                    CommonSizedBox(width: 9 * size),
                    Text(
                      MediaPageString.addAttachment,
                      style: TextStyle(
                        fontSize: 12 * font,
                        fontWeight: FontWeight.w400,
                        color: CommonColor.textColor,
                      ),
                    ),
                  ],
                ),
                CommonSizedBox(height: 14 * size),
                DottedBorder(
                  color: CommonColor.textColor,
                  borderType: BorderType.RRect,
                  strokeCap: StrokeCap.butt,
                  radius: Radius.circular(12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffe8f1fd),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 23 * size,
                        horizontal: 23 * size,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AttechmentContainer(
                            imagePath: ImagePath.png,
                            size: size,
                            onTap: () {},
                          ),
                          AttechmentContainer(
                            imagePath: ImagePath.pdf,
                            size: size,
                            onTap: () {},
                          ),
                          AttechmentContainer(
                            imagePath: ImagePath.xls,
                            size: size,
                            onTap: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                CommonSizedBox(height: 21 * size),
                Row(
                  children: [
                    SvgPicture.asset(
                      ImagePath.attechment,
                      height: 12 * size,
                      width: 12 * size,
                    ),
                    CommonSizedBox(width: 3 * size),
                    Text(
                      MediaPageString.attachment,
                      style: TextStyle(
                        fontSize: 12 * font,
                        fontWeight: FontWeight.w400,
                        color: CommonColor.textColor,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 25 * size,
                      height: 25 * size,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x332865dc).withAlpha(50),
                            offset: Offset(0 * size, 4 * size),
                            blurRadius: 7.5 * size,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          ImagePath.png,
                          height: 20 * size,
                          width: 16 * size,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3 * size,
                    ),
                    Container(
                      width: 25 * size,
                      height: 25 * size,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x332865dc).withAlpha(50),
                            offset: Offset(0 * size, 4 * size),
                            blurRadius: 7.5 * size,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          ImagePath.pdf,
                          height: 20 * size,
                          width: 16 * size,
                        ),
                      ),
                    ),
                    Container(
                      width: 28 * size,
                      height: 28 * size,
                      decoration: BoxDecoration(
                        color: Color(0xffe8f1fd),
                        borderRadius: BorderRadius.circular(14 * size),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            ImagePath.add,
                            color: CommonColor.mainColor,
                            width: 14 * size,
                            height: 14 * size,
                          ),
                          Text(
                            '2  ',
                            style: TextStyle(
                              fontSize: 13 * font,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff2865db),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 4 * size,
                    ),
                    SvgPicture.asset(
                      ImagePath.more_horizaontal,
                      height: 5 * size,
                      width: 21 * size,
                    ),
                  ],
                ),
                CommonSizedBox(height: 19 * size),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Add Notes:",
                    style: TextStyle(
                      fontSize: 12 * size,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                CommonSizedBox(height: 12 * size),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 12 * font,
                        fontWeight: FontWeight.w400,
                      ),
                      hintText: 'Description',
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(
                        0xffe8f1fd,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20 * size,
          );
        },
      ),
    );
  }
}
