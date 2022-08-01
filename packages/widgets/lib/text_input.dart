import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextInputForm extends StatefulWidget {
  String placeholder;
  String title;
  String? errorMessage;
  Function(String number) onChange;
  TextInputController controller;

  TextInputForm(
      {required this.title,
      required this.placeholder,
      this.errorMessage,
      required this.onChange,
      required this.controller,
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
            child: SizedBox(
              height: 48,
              child: TextFormField(
                onChanged: (value) {
                  widget.onChange(value);
                },
                decoration: InputDecoration(
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 12),
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
                    errorText: widget.controller.hasError
                        ? widget.errorMessage
                        : null),
              ),
            ),
          ),
        ],
      );
    }));
  }
}

class TextInputController extends ChangeNotifier {
  bool hasError = false;

  setError(bool state) {
    hasError = state;
    this.notifyListeners();
  }
}
