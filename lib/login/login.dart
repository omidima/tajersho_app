import 'package:flutter/material.dart';

part 'cubit/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late _Controller _controller;

  @override
  void initState() {
    _controller = _Controller(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hello world!"),
      ),
    );
  }
}
