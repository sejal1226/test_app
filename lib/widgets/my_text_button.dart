import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nauggets_app/constant/colors.dart';
import 'package:nauggets_app/controllers/login_controller.dart';


class MyTextButton extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

   MyTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () async {
              await loginController.fetchLoginDetails();
            },
            child: const Text(
              "Forgot your password ?",
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 14),
            )));
  }

  Future<void> fetchLoginDetails() async {
    final response = await loginController.apiService.getUsers();
    if (response.status.hasError) {
      print("nod data");
      // Handle error
    } else {
      final data = response.body;
      final List<dynamic> userList = data['data'];
     print(data);
      // Display user list in a widget
    }
  }
}



