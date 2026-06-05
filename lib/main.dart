import 'package:flutter/material.dart';
import 'package:user_log/feature/home/view/screen/user_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: UserPage());
  }
}
