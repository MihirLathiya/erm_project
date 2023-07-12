import 'package:erm/Application/Utils/colors.dart';
import 'package:erm/Application/Utils/common_string.dart';
import 'package:erm/Application/Utils/image_path.dart';
import 'package:erm/Application/router/app_rout.dart';
import 'package:erm/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final pinController = TextEditingController();
  final defaultPinTheme = PinTheme(
    margin: EdgeInsets.symmetric(horizontal: 5),
    width: 50.sp,
    height: 50.sp,
    textStyle: const TextStyle(
      fontSize: 22,
      // color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
  );
  final webPinTheme = PinTheme(
    margin: EdgeInsets.symmetric(horizontal: 5),
    width: 50.sp,
    height: 50.sp,
    textStyle: const TextStyle(
      fontSize: 22,
      // color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0x192865dc),
          offset: Offset(0, 4),
          blurRadius: 7.5,
        ),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    double width = Responsive.isDesktop(context)
        ? windowWith
        : Responsive.isTablet(context)
            ? tabletWidth
            : mobileWith;

    final size = MediaQuery.of(context).size.width / width;
    double font = size * 0.97;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Responsive.isDesktop(context)
            ? WebView(size, font)
            : Container(
                height: Get.height,
                width: Get.width,
                color: CommonColor.mainColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      WebImagePath.webOtp,
                      height: 375.sp,
                      width: Get.width,
                    ),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          'OTP Verification',
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF)),
                        )),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          'We Sent OTP code to verify your Number',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffD4D8E3)),
                        )),
                    SizedBox(
                      height: 15.sp,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Pinput(
                        defaultPinTheme: defaultPinTheme,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        keyboardType: TextInputType.number,
                        controller: pinController,
                        length: 4,

                        // inputFormatters: [Formatter()],
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Didn't receive OTP Code?",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          resendCodeOnTap();
                        },
                        child: Text(
                          'Resend code',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.sp,
                    ),
                    InkWell(
                      onTap: () {
                        otpOnSubmit();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 47.sp),
                        height: 50.sp,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.sp),
                          gradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                            colors: [
                              Color(0xff0F5ECB),
                              Color.fromRGBO(255, 255, 255, 0.15)
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    )
                  ],
                ),
              ),
      ),
    );
  }

  /// WEB VIEW

  WebView(double size, double font) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: CommonColor.mainColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  LogInPageString.crm,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  LogInPageString.weblogInInfo,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  WebImagePath.webOtp,
                  height: 581 * size,
                  width: 660 * size,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 100 * size, right: 86 * size),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  OtpPageString.otpVerification,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 12 * size,
                ),
                Text(
                  OtpPageString.otpInfo,
                  style: TextStyle(
                    fontSize: 18,
                    color: CommonColor.textColor,
                  ),
                ),
                SizedBox(
                  height: 50 * size,
                ),
                Pinput(
                  defaultPinTheme: webPinTheme,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  keyboardType: TextInputType.number,
                  controller: pinController,
                  length: 4,
                ),
                SizedBox(
                  height: 40 * size,
                ),
                Text(
                  "Didn`t receive OTP Code?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: CommonColor.textColor,
                  ),
                ),
                SizedBox(
                  height: 8 * size,
                ),
                TextButton(
                  onPressed: () {
                    resendCodeOnTap();
                  },
                  child: Text(
                    'Resend code',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: CommonColor.textColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 38 * size,
                ),
                SizedBox(
                  height: 50 * size,
                  width: 222 * size,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CommonColor.mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      otpOnSubmit();
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 20 * font,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// RESEND CODE
  resendCodeOnTap() {}

  /// ON SUBMIT
  otpOnSubmit() {
    Get.offNamed(AppRoutes.homeScreen);
  }
}
