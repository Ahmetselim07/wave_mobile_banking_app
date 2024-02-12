import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:samet_ahmet_ilkders/app/views/view_login/login_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const LoginView()
    );
  }
}
