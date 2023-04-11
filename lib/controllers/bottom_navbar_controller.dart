import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nauggets_app/screens/home_screen.dart';
import 'package:nauggets_app/screens/login_screen.dart';

class BottomNavBarController extends GetxController {
  final List<Widget> pages = [LoginScreen(), HomeScreen()];
  final List<String> pageTitles = ['Login', 'Home'];

  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}
