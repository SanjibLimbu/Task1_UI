import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class SearchEmailWidget extends StatelessWidget {
  const SearchEmailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: TextFormField(
        style: Theme.of(context).textTheme.labelSmall,
        decoration: const InputDecoration(
          hintText: 'Search mails',
          hintStyle: TextStyle(
            fontSize: 12,
            color: teritaryColor,
            fontWeight: FontWeight.w400,
            letterSpacing: 0
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                4,
              ),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: gray200,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: gray200,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
        ),
      ),
    );
  }
}
