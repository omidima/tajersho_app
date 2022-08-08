import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tajersho/theme/app_fonts.dart';
import 'package:tajersho/theme/app_theme.dart';
import 'package:widgets/app_button.dart';
import 'package:widgets/text_input.dart';

void main() async {
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
      home: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 56, horizontal: 16)
                  .copyWith(bottom: 0),
              child: Column(
                children: [
                  Expanded(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        "به راحتی چند کلیک وارد دنیای تجارت شوید و‍ کسب‌وکار خود را رونق دهبد.",
                        style: AppFonts.heading_2,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                          "در صورتی که صاحب کارخانه و یا کارگاه تولیدی هستید و نیاز دارید تا در مورد سیاست‌های حفظ حریم خصوصی و قوانین فروش در پلفترم تاجرشو بیشتر مطالعه کنید بر روی این لینک کلیک نمایید."),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextInputForm(
                          title: "وارد کردن شماره موبایل",
                          placeholder: "۹۸۹۳۷۵۱۲۷۸۳۴+",
                          onChange: (e) {},
                          controller: _controller),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                          'با ثبت نام در تاجرشو با تمامی قوانین موافقت میکنید. برای خواندن مقررات میتوانید به این لینک مراحعه کنید.'),
                      const SizedBox(
                        height: 16,
                      ),
                      AppButton(
                          onPressed: () {},
                          child: const Text(
                            'ورود به برنامه',
                            style: TextStyle(fontSize: 14),
                          )),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "ثبت نام به عنوان کسب‌و‌کار",
                        style: TextStyle(
                            fontSize: 14, decoration: TextDecoration.underline),
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
