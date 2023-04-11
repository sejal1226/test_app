import 'package:get/get.dart';

class ApiService extends GetConnect {
  Future<Response> getUsers() async {
    final response = await get('https://reqres.in/api/users?page=2');
    return response;
  }
}
