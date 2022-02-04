import 'dart:async';
import 'dart:convert';
import 'package:final_flutter_app/model/task.dart';
import 'package:final_flutter_app/utils/constants.dart';
import 'package:final_flutter_app/utils/string_ext.dart';
import 'package:http/http.dart' as http;

Future<TaskList> fetchTaskList(int index) async {
  final response = await http.get(Uri.parse(URL_GET_TODOS.format(index)));

  if (response.statusCode == 200) {
    TaskList taskList = TaskList();
    List<dynamic> json = jsonDecode(response.body);
    for (int i = 0; i < json.length; i++) {
      taskList.items.add(Task.fromJson(json[i]));
    }
    return taskList;
  } else {
    throw Exception('Fetch tasks error');
  }
}
