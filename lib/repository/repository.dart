// import 'package:flutter_application_2/views/provider/provider.dart';
// import 'package:get/get.dart';
// // import 'base_url.dart';

// class UserService extends GetConnect {
//  @override
//  void onInit() {
//     httpClient.baseUrl = BaseUrl.url;
//     super.onInit();
//  }

//  Future<List<dynamic>> fetchUsers() async {
//     final response = await get('/api/users?page=2');
//     if (response.statusCode == 200) {
//       return response.body['data'];
//     } else {
//       throw Exception('Failed to load users');
//     }
//  }
// }

import 'dart:convert';
import 'package:flutter_application_2/models/model.dart';
import 'package:flutter_application_2/provider/provider.dart';
import 'package:get/get.dart';

class UserRepository {
  Future<List<UserModel>> fetchUsers() async {
    final response = await GetConnect().get(BaseUrl.userUrl);
    if (response.statusCode == 200) {
      
      // Directly decode the response body as a Map<String, dynamic>
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);

      // Access the 'data' key from the decoded JSON
      final List<dynamic> result = jsonResponse['data'];

      // Map each item in the list to a UserModel instance
      return result.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception('Error fetching data');
    }
  }
}
