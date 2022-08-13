import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tajersho/login/cubit/login_cubit.dart';
import 'package:widgets/app_button.dart';
import 'package:widgets/text_input.dart';

import '../theme/app_fonts.dart';

part 'cubit/login_view_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final _Controller _controller;
  TextInputController _usernameController = TextInputController();
  TextInputController _passwordController = TextInputController();

  late final LoginCubit _cubit = LoginCubit();

  @override
  void initState() {
    _controller = _Controller(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => _cubit,
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 56, horizontal: 16)
                  .copyWith(bottom: 0),
              child: Column(
                children: [
                  Column(
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
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BlocBuilder<LoginCubit, LoginState>(
                        buildWhen: (previous, current) =>
                            current is UsernameValidState ||
                            current is UsernameInvalidState,
                        builder: (context, state) {
                          return TextInputForm(
                              title: "نام کاربری",
                              errorMessage: state is UsernameInvalidState
                                  ? "نام وارد شده معتبر نیست"
                                  : null,
                              placeholder: "omidima",
                              type: TextInputType.text,
                              onChange: (e) {
                                _cubit.changeUsername(e);
                              },
                              controller: _usernameController);
                        },
                      ),
                      BlocBuilder<LoginCubit, LoginState>(
                        buildWhen: (previous, current) => current is PasswordValidState || current is PasswordInvalidState,
                        builder: (context, state) {
                          return TextInputForm(
                              title: "رمز ورود",
                              isSecure: true,
                              errorMessage: state is PasswordInvalidState
                                  ? "رمز ورود معتبر نیست"
                                  : null,
                              placeholder: "********",
                              type: TextInputType.text,
                              onChange: (e) {
                                _cubit.changePassword(e);
                              },
                              controller: _passwordController);
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                          'با ثبت نام در تاجرشو با تمامی قوانین موافقت میکنید. برای خواندن مقررات میتوانید به این لینک مراحعه کنید.'),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, state) {
                          return AppButton(
                              onPressed: state is UsernameInvalidState ||
                                      state is PasswordInvalidState
                                  ? null
                                  : () {
                                      _cubit.loginUser(_usernameController.text,
                                          _passwordController.text);
                                    },
                              child: const Text(
                                'ورود به برنامه',
                                style: TextStyle(fontSize: 14),
                              ));
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "ثبت نام به عنوان کسب‌و‌کار",
                        style: TextStyle(
                            fontSize: 14, decoration: TextDecoration.underline),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
