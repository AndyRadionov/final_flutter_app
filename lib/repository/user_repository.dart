import 'dart:async';
import 'dart:convert';
import 'package:final_flutter_app/model/user.dart';
import 'package:final_flutter_app/utils/constants.dart';
import 'package:final_flutter_app/utils/string_ext.dart';
import 'package:http/http.dart' as http;

Future<UserList> fetchUserList() async {
  final response = await http.get(Uri.parse(URL_GET_USERS_LIST));

  if (response.statusCode == 200) {
    UserList userList = UserList();
    List<dynamic> json = jsonDecode(response.body);
    for (int i = 0; i < json.length; i++) {
      userList.items.add(User.fromJson(json[i]));
    }
    return userList;
  } else {
    throw Exception('Fetch users error');
  }
}

Future<User> fetchSingleUser(int index) async {
  final response = await http.get(Uri.parse(URL_GET_USER.format(index)));

  if (response.statusCode == 200) {
    return User.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Fetch user error');
  }
}
