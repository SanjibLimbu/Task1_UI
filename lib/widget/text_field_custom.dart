import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class TextFieldCustom extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final void Function()? passwordOnOff;
  final bool isObscure;

  const TextFieldCustom(
      {Key? key,
      this.hintText = '',
      this.isPassword = false,
      this.passwordOnOff,
      this.isObscure = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.labelSmall,

      //if password field, obsure true
      obscureText: isPassword ? isObscure : false,
      decoration: InputDecoration(
        //check if it is password field or not to render suffix icon

        suffixIconColor: teritaryColor,
        suffixIcon: isPassword
            ? IconButton(
                onPressed: passwordOnOff,
                icon: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                  size: 20,
                ),
              )
            : null,
        filled: true,
        fillColor: mainBgColor,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelSmall,
        contentPadding: const EdgeInsets.all(12),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              4,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: gray200,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: gray200,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
      ),
    );
  }
}
