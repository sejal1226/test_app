import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nauggets_app/constant/colors.dart';
import 'package:nauggets_app/widgets/elevated_button.dart';
import 'package:nauggets_app/widgets/my_text_button.dart';
import 'package:nauggets_app/widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainAppColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 1 / 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                      children: <TextSpan>[
                        TextSpan(text: "Welcome,"),
                        TextSpan(
                          text: " to sign in \ncontinue",
                          style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.5 / 10.h,
              ),
              Row(
                children: [
                  Container(
                    height: Get.height * 1 / 10.h,
                    width: Get.width * 5 / 10.w,
                    color: const Color(0xFF318ce7),
                  ),
                  Container(
                    height: Get.height * 1 / 10.h,
                    width: Get.width * 4 / 10.w,
                    color: const Color(0xFF3399ff),
                    child: const Center(
                        child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.5 / 10.h,
              ),
              TextFields("+91 ", "Enter your phone number", "Phone number",
                  Icons.phone, TextInputType.phone, false),
              SizedBox(
                height: Get.height * 0.5 / 10.h,
              ),
              TextFields("", "Enter your password", "Password", Icons.password,
                  TextInputType.text, true),
              SizedBox(
                height: Get.height * 0.5 / 10.h,
              ),
              const SignupButton(),
               MyTextButton(),
            ],
          ),
        ),
      ),
    );
  }
}





