import 'package:flutter/material.dart';
import 'package:itg_task_1/pages/login_page.dart';
import 'package:itg_task_1/pages/new_password_page.dart';
import 'package:itg_task_1/pages/reset_password_page.dart';
import 'package:itg_task_1/pages/verification_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITG Task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        LoginPage.routeName : (ctx) => LoginPage(),
        ResetPasswordPage.routeName : (ctx) => ResetPasswordPage(),
        NewPasswordPage.routeName : (ctx) => NewPasswordPage(),
      },
     home:LoginPage(),
    );
  }
}

