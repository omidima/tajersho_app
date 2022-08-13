import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tajersho/main/main_screen.dart';
import 'package:widgets/text_input.dart';

import 'login/login.dart';
import 'theme/app_theme.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('users');
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  TextInputController _controller = TextInputController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appLightTheme,
      home: const MainScreen(),
    );
  }
}
