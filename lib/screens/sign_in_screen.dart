import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';
import 'package:ui/widget/app_bar_custom.dart';
import 'package:ui/widget/btn_widget.dart';

import 'package:ui/widget/text_field_custom.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool? _checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    double safeAreaHeight = MediaQuery.of(context).padding.top;
    TextTheme theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(safeAreaHeight + 64),
        child: AppBarCustom(safeAreaHeight: safeAreaHeight, theme: theme),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 24,
          left: 16,
          right: 16,
          bottom: 44,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: theme.labelMedium,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Login to your account',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: gray400),
            ),
            const SizedBox(
              height: 24,
            ),
            //form start
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Email label
                  Text(
                    'Email',
                    style: theme.labelSmall,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  //email field
                  const TextFieldCustom(
                    hintText: 'janecopper@gmail.com',
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  //password label
                  Text(
                    'Password',
                    style: theme.labelSmall,
                  ),
                  const SizedBox(
                    height: 4,
                  ),

                  //password field
                  TextFieldCustom(
                    hintText: 'password',
                    isPassword: true,
                    passwordOnOff: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    isObscure: _isObscure,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      //checkbox border radius using ClipRReact
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: SizedBox(
                          height: 20,
                          width: 20,
                          child: Checkbox(
                            fillColor: MaterialStateProperty.all(mainColor),
                            value: _checkBoxValue,
                            onChanged: (value) {
                              setState(() {
                                _checkBoxValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Remember me',
                        style: theme.bodySmall!.copyWith(
                          color: secondaryColor,
                          fontSize: 14,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      //forgot password navigation
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: theme.bodySmall!.copyWith(
                            color: mainColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //form end
            const Expanded(child: SizedBox()),

            //login button
            Btn(
              btnFunctin: () {},
              title: 'Login',
              bgColor: mainColor,
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: theme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: teritaryColor,
                  ),
                ),
                Text(
                  "Sign up?",
                  style: theme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: mainColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
