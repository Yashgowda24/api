// import 'package:flutter_application_2/repository/repository.dart';
// import 'package:flutter_application_2/views/models/model.dart';
// import 'package:get/get.dart';
// // import 'user_service.dart';

// class UserController extends GetxController {
// //  var users = List<dynamic>.empty(growable: true).obs;
//   var users = <ApiDemoModel>[].obs;
//   var isLoading = true.obs;

//  @override
//  void onInit() {
//     super.onInit();
//     fetchUsers();
//  }

//  Future<void> fetchUsers() async {
//     try {
//       users.value = await UserService().fetchUsers();
//     } catch (e) {
//       print(e);
//       // Handle error
//     }
//  }
// }


// import 'dart:convert';
import 'package:flutter_application_2/repository/repository.dart';
import 'package:flutter_application_2/models/model.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

class UserController extends GetxController {
  var userList = <UserModel>[].obs;
  var isLoading = true.obs;

@override
void onInit() { 
  super.onInit();
  getUsers();
}

Future<void> getUsers() async {
    try {
      userList.value = await UserRepository().fetchUsers();
      isLoading.value = false;
      update();
    } catch (e) {
      print('Error fetching data: $e');
    }
 }
}