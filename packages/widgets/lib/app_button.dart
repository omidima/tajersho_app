import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppButton extends StatelessWidget {
  Function()? onPressed;
  Widget child;

  AppButton({required this.onPressed, required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: 52,
      minWidth: double.infinity,
      child: child,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Color(0xff2A5A50), width: 2)),
    );
  }
}
