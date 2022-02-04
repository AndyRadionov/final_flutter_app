import 'package:final_flutter_app/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'utils/string_const.dart';
import 'package:final_flutter_app/screens/auth_screen.dart';
import 'package:final_flutter_app/screens/users_list_screen.dart';
import 'package:final_flutter_app/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const RegScreen(),
        '/users': (context) => const UserScreen(),
        '/tasks': (context) => const TaskMainScreen(),
      },
      title: Strings.appTitle,
      theme: myTheme(),
    );
  }
}
