// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('API Test'),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/controller/controller.dart';
// import 'package:get/get.dart';

// class HomePage extends StatelessWidget {
//  final UserController userController = Get.put(UserController());

//  @override
//  Widget build(BuildContext context) {
//     return Obx(() {
//       if (userController.users.isEmpty) {
//         return Center(child: CircularProgressIndicator());
//       } else {
//         return ListView.builder(
//           itemCount: userController.users.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(userController.users[index]['first_name']),
//               subtitle: Text(userController.users[index]['email']),
//             );
//           },
//         );
//       }
//     });
//  }
// }

// import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/controller/user_controller.dart';
// // import 'package:flutter_application_1/model/user_model.dart';
// import 'package:flutter_application_2/controller/controller.dart';
// import 'package:flutter_application_2/views/models/model.dart';
// import 'package:get/get.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<UserController>();
//     List<ApiDemoModel> userList = controller.users;
//     return Scaffold(
//       appBar: AppBar(title:const Text("Getx Demo"),),
//       body: Obx(
//         () => controller.isLoading.value
//             ? const Center(child:  CircularProgressIndicator())
//             : ListView.builder(
//                 itemCount: userList.length,
//                 itemBuilder: (_, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Card(
//                       color: Colors.blue[200],
//                       child: ListTile(
//                         title: Text(
//                           '${userList[index].firstName}  ${userList[index].lastName}',
//                           style: const TextStyle(color: Colors.black),
//                         ),
//                         subtitle: Text(
//                           '${userList[index].email}',
//                           style: const TextStyle(color: Colors.black),
//                         ),
//                         leading: CircleAvatar(
//                           backgroundImage: NetworkImage(
//                              userList[index].avatar.toString()),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/controller.dart';
import 'package:flutter_application_2/models/model.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserController>();
    List<UserModel> userList = controller.userList;
    return Scaffold(
      appBar: AppBar(title:const Text("API Integration"),),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child:  CircularProgressIndicator())
            : ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.blue[200],
                      child: ListTile(
                        title: Text(
                          '${userList[index].firstName}  ${userList[index].lastName}',
                          style: const TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(
                          '${userList[index].email}',
                          style: const TextStyle(color: Colors.black),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                             userList[index].avatar.toString()),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}