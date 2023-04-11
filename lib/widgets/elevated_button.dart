import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nauggets_app/constant/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nauggets_app/screens/home_screen.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50.h,
        width: 200.w,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: textColor,
              onPrimary: mainAppColor,
            ),
            onPressed: () {
              Get.to(() => const HomeScreen());
            },
            child: const Text(
              "Sign in",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
      ),
    );
  }
}
