import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class SignInAppBarCustom extends StatelessWidget {
  const SignInAppBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double safeAreaHeight = MediaQuery.of(context).padding.top;
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      height: 64 + safeAreaHeight,
      color: mainColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: whiteColor),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            'Sign in',
            style: theme.titleMedium,
          )
        ],
      ),
    );
  }
}
