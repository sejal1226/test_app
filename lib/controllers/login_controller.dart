import 'package:get/get.dart';
import 'package:nauggets_app/api/api_service.dart';


class LoginController extends GetxController {
  final ApiService apiService = Get.put<ApiService>(ApiService());

  Future<void> fetchLoginDetails() async {
    final response = await apiService.getUsers();
    // Handle response here
  }

}


