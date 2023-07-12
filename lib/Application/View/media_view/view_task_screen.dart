import 'package:erm/Application/Utils/colors.dart';
import 'package:erm/Application/Utils/common_text.dart';
import 'package:erm/Application/Utils/image_path.dart';
import 'package:erm/ViewModel/media_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

/// TASK VIEW SCREEN

class TaskViewScreen extends StatelessWidget {
  final MediaViewController controller;
  const TaskViewScreen({Key? key, required this.controller}) : super(key: key);

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
          return GestureDetector(
            onTap: () {},
            child: Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        10 * size, 10 * size, 10 * size, 10 * size),
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Color(0xffe8f1fd),
                      borderRadius: BorderRadius.circular(8 * size),
                    ),
                    child: Row(
                      children: [
                        Text(
                          ' Task Title:',
                          style: TextStyle(
                            fontSize: 16 * font,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff262525),
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: CommonColor.activeColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Active ",
                          style: TextStyle(
                            fontSize: 12 * font,
                            color: CommonColor.activeColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15 * size,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // ellipse15huF (1:209)
                        width: 28 * size,
                        height: 28 * size,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23 * size),
                          color: Color(0xffd9d9d9),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://wallpapercave.com/wpt/wp9941882.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12 * size,
                      ),
                      Text(
                        'Anaru Hakopa',
                        style: TextStyle(
                          fontSize: 14 * font,
                          color: Color(0xff262525),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16 * size,
                  ),
                  Row(
                    children: [
                      Text(
                        'Due Date :',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12 * font,
                          color: Color(0xff262525),
                        ),
                      ),
                      Text(
                        ' Due in 5 days',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12 * font,
                          color: Color(0xffa3a5ab),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16 * size,
                  ),
                  Row(
                    children: [
                      Text(
                        "Task Timeline: ",
                        style: TextStyle(
                          fontSize: 12 * font,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              8 * size, 6 * size, 7 * size, 5 * size),
                          height: 35 * size,
                          decoration: BoxDecoration(
                            color: Color(0xffe8f1fd),
                            borderRadius: BorderRadius.circular(6 * size),
                          ),
                          child: Divider(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20 * size,
                  ),
                  Row(
                    children: [
                      Text(
                        'Assign Holder: ',
                        style: TextStyle(
                          fontSize: 14 * font,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff262525),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * size, 0 * size, 9 * size, 0 * size),
                        width: 56 * size,
                        height: 28 * size,
                        child: Stack(
                          children: [
                            Positioned(
                              // ellipse16pQm (1:245)
                              left: 0 * size,
                              top: 0 * size,
                              child: Container(
                                width: 28 * size,
                                height: 28 * size,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(14 * size),
                                  color: Color(0xffd9d9d9),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://wallpapercave.com/fwp/wp12482310.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // ellipse19KsK (1:246)
                              left: 14 * size,
                              top: 0 * size,
                              child: Container(
                                width: 28 * size,
                                height: 28 * size,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(14 * size),
                                  color: Color(0xffd9d9d9),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://wallpapercave.com/fwp/wp12493824.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group9316dt1 (1:251)
                              left: 28 * size,
                              top: 0 * size,
                              child: Container(
                                width: 28 * size,
                                height: 28 * size,
                                decoration: BoxDecoration(
                                  color: Color(0xffe8f1fd),
                                  borderRadius:
                                      BorderRadius.circular(14 * size),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      ImagePath.add,
                                      color: CommonColor.mainColor,
                                      width: 14 * size,
                                      height: 14 * size,
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(
                                        fontSize: 13 * font,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff2865db),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        ImagePath.more_horizaontal,
                        height: 5 * size,
                        width: 21 * size,
                      ),
                      Spacer(),
                      Container(
                        height: 30 * size,
                        width: 103 * size,
                        decoration: BoxDecoration(
                          color: CommonColor.activeColor100,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: CommonColor.activeColor,
                          ),
                        ),
                        child: Center(
                          child: CommonText(
                            text: 'Pending',
                            fontSize: 12 * font,
                            color: CommonColor.activeColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
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
