import 'package:erm/Application/Utils/colors.dart';
import 'package:erm/Application/Utils/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

InkWell AttechmentContainer(
    {double? size, String? imagePath, void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Container(
          width: 67 * size!,
          height: 67 * size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.white,
          ),
          child: Center(
            child: SvgPicture.asset(
              imagePath!,
              height: 55 * size,
              width: 55 * size,
            ),
          ),
        ),
        SizedBox(
          height: 8 * size,
        ),
        Text(
          "File Name ",
          style: TextStyle(
            fontSize: 12 * size,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}

InkWell FollowUpButton(
    {double? size, String? imagePath, void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: 28 * size!,
      height: 28 * size,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x332865dc).withAlpha(10),
            offset: Offset(0 * size, 0 * size),
            blurRadius: 8 * size,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: CommonColor.white,
      ),
      child: Center(
        child: imagePath == ImagePath.add
            ? SvgPicture.asset(
                imagePath!,
                height: 18 * size,
                width: 18 * size,
                color: CommonColor.mainColor,
              )
            : SvgPicture.asset(
                imagePath!,
                height: 18 * size,
                width: 18 * size,
              ),
      ),
    ),
  );
}
