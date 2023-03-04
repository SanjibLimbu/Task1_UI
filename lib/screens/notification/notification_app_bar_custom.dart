import 'package:flutter/material.dart';
import 'package:ui/utils/color.dart';

class NotificationAppBarCustom extends StatelessWidget {
  const NotificationAppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    double safeAreaHeight = MediaQuery.of(context).padding.top;
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 16
      ),
      height: 64 + safeAreaHeight,
      
     
       decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: gray200,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Notification',
            style: theme.labelMedium!.copyWith(
              fontSize: 18
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.more_vert_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
