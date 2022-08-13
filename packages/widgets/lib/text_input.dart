import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextInputForm extends StatefulWidget {
  String placeholder;
  String title;
  String? errorMessage;
  Function(String number) onChange;
  TextInputType type;
  TextDirection textDirection;
  TextInputController controller;
  bool isSecure;

  TextInputForm(
      {required this.title,
      required this.placeholder,
      this.errorMessage,
      required this.onChange,
      required this.controller,
      this.type = TextInputType.text,
      this.isSecure = false,
      this.textDirection = TextDirection.ltr,
      Key? key})
      : super(key: key);

  @override
  State<TextInputForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TextInputForm> {
  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
                color:
                    widget.controller.hasError ? Colors.red : Color(0xff2A5A50),
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(blurRadius: 4, color: Color.fromARGB(6, 196, 196, 196))
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 48,
                  child: TextFormField(
                    obscureText: widget.isSecure,
                    keyboardType: widget.type,
                    textDirection: widget.textDirection,
                    onChanged: (value) {
                      widget.onChange(value);
                      widget.controller.text = value;
                      widget.controller.changeText(value);
                    },
                    decoration: InputDecoration(
                      hintTextDirection: widget.textDirection,
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Color(0xff2A5A50), width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Color(0xff2A5A50), width: 2)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Color(0xff2A5A50), width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Color(0xff2A5A50), width: 2)),
                      hintText: widget.placeholder,
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                widget.errorMessage != null
                    ? Text(
                        widget.errorMessage!,
                        style: TextStyle(fontSize: 12, color: Colors.red),
                      )
                    : Container()
              ],
            ),
          ),
        ],
      );
    }));
  }
}

class TextInputController extends ChangeNotifier {
  String text = "";
  bool hasError = false;

  setError(bool state) {
    hasError = state;
    this.notifyListeners();
  }

  changeText(String text) {
    this.text = text;
    this.notifyListeners();
  }
}
